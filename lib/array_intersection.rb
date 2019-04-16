# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: ?
# Space complexity: ?
def intersection(array1, array2)
  if array1 == nil || array2 == nil || array1.length == 0 || array2.length == 0
    return []
  elsif array1.length < array2.length
    larger = array2
    smaller = array1
  elsif array1.length >= array2.length
    larger = array1
    smaller = array2
  end

  hash_table = { }
  smaller.each do |num|
    hash_table[num] = 1
  end

   combined = []
   larger.each do |num1|
    if hash_table.include? num1
      combined << num1
    end
  end
  return combined
end

array3 = [1, 2, 3]
array4 = [3, 4, 5, 6]

# puts "hi #{intersection(array3, array4)}"