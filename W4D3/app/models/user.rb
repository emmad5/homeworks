# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true
  validates :password_digest, presence: { message: "Password can't be blank" }
  validates :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true}

  before_validation :ensure_session_token
  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.where(username: username)
    if user && BCrypt::Pass.new(user.password_digest).is_password?(password)
      return user
    end
    nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save
    session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(pwd)
    @password = pwd
    @password_digest = BCrypt::Password.create(pwd)
  end
end
