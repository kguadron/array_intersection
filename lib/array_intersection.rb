# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n + m) where n and m are the lengths of the two array inputs
# Space complexity: O(n) or O(m), where n and m are the lengths of the two array inputs,
#                   depending in which array is smaller
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

  hash_table = {}
  smaller.each do |num|
    hash_table[num] = 1
  end

  combined = []
  larger.each do |num|
    if hash_table.include? num
      combined << num
    end
  end
  return combined
end
