# Majority Element III: Find all elements appearing k times in array with n/k occurrences
def majority_element_k(nums, k)
  return [] if k < 2
  candidates = {}
  count_decrement = 0
  nums.each do |num|
    if candidates.key?(num)
      candidates[num] += 1
    elsif candidates.size < k - 1
      candidates[num] = 1
    else
      count_decrement += 1
      if count_decrement == k - 1
        candidates.each_key { |c| candidates[c] -= 1 }
        candidates.delete_if { |_, v| v == 0 }
        count_decrement = 0
      end
    end
  end
  result = []
  candidates.each_key { |c| candidates[c] = 0 }
  nums.each { |num| candidates[num] += 1 if candidates.key?(num) }
  threshold = nums.size / k
  candidates.each { |num, count| result << num if count > threshold }
  result.sort
end

puts majority_element_k([1,2], 2).inspect
puts majority_element_k([1,1,2,2,3,3,3], 3).inspect
