# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n + m), where O(n) is the time complexity to add the values in the smaller array to the hash table, and O(m) is the time complexity to look up the values of the larger array in the hash table.
# Space complexity: O(n) (if n < m). O(n) to add each element to the hash table and O(n) for the results array
def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end

  if array1.length > array2.length
    smaller = array2
    larger = array1
  else
    smaller = array1
    larger = array2
  end

  my_hash = {}
  smaller.each do |num|
    my_hash[num] = 1
  end

  common_elements = []

  larger.each do |num_1|
    common_elements << num_1 if my_hash.include?(num_1)
  end

  return common_elements
end
