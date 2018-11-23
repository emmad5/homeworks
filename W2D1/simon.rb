class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length = 1)
    @sequence_length = sequence_length
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    guess = []
    until guess.length == sequence_length
      puts 'Enter a color ex: blue'
      guess << gets.chomp
    end
    if guess.last != @seq.last
      @game_over = true
    end
  end

  def add_random_color
    colors = ['red', 'blue', 'green', 'yellow']
    @seq << colors.sample
  end

  def round_success_message
    puts "Congrats!, the sequence length will increase now"
  end

  def game_over_message
    puts "Uh Oh! Game is over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
