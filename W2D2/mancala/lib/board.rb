class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    i = 0
    while i < cups.length
      if i != 6 && i != 13
        cups[i].concat([:stone, :stone, :stone, :stone])
      end
      i += 1
    end
    @cups[13] = []
    cups
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    unless start_pos >= 0 && start_pos < 14
      raise 'Invalid starting cup'
    end
    raise 'Starting cup is empty' if @cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    if valid_move?(start_pos)
      stones = @cups[start_pos].length
      num = stones
      @cups[start_pos] = []
      i = start_pos + 1
      while stones > 0
        j = i % 13
        if current_player_name == @name1 && j != 13
          @cups[j] << :stone
          stones -= 1
        elsif current_player_name == @name2 && j != 6
          @cups[j] << :stone
          stones -= 1
        end
        i += 1
      end
    end
    render
    next_turn((start_pos + num) % 13)
  end

  def next_turn(ending_cup_idx)

    if @cups[ending_cup_idx].length > 1 && ending_cup_idx.between?(0, 6)
      :switch
    elsif @cups[ending_cup_idx].length == 1
      :prompt
    else
      ending_cup_idx
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if @cups[0..5].all?(&:empty?)
      return true
    elsif @cups[7..12].all?(&:empty?)
      return true
    end
    false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    if @cups[6].length > @cups[13].length
      return @name1
    end
  end
end
