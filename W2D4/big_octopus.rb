arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish(arr)
  longest = arr[0]
  arr.each do |fish1|
    arr.each do |fish2|
      if fish2.length > fish1.length
        longest = fish2
      end
    end
  end
  longest
end

def fish_merge_sort(arr)
  return arr if arr.lenght <= 0
  mid_i = array.length / 2
  left = merge_sort(array.take(mid_i))
  right = merge_sort(array.drop(mid_i))
  merge(left, right).last
end

def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    if left.first < right.first
      merged << left.shift
    else
      merged << right.shift
    end
  end
  merged + left + right
end


def clever(arr)
  longest = arr[0]
  arr.each do |fish|
    longest = fish if fish.length > longest.length
  end
  longest
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def 
