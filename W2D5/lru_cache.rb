class LRUCache
  def initialize(length)
    @cache = []
    @length = length
  end

  def count
    @cache.size
    # returns number of elements currently in cache
  end

  def add(el)
    unless @cache.inclde?(el)
      @cache.shift if @cache.count < length
      @cache.push(el)
    end
    # adds element to cache according to LRU principle
  end

  def show
    p @cache
    # shows the items in the cache, with the LRU item first
  end

  private
  # helper methods go here!

end
