class Map
  def initialize
    @map = []
  end

  def set(key, value)
    if @map.has_key?(key)
      return @map
    else
      @map << [key, value]
    end
    @map
  end

  def has_key?(key)
    @map.each { |pair| return true if pair[0] == key}
    false
  end

  def get(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    nil
  end

  def delete(key)
    i = 0
    while i < @map.length
      pair = @map[i]
      @map.delete_at(i) if pair[0] == key
      i += 1
    end
  end

  def show
    @map
  end
end
