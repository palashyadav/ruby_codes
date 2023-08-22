# Missing Number: Find missing number in array 0 to n
def missing_number(nums)
  n = nums.size
  expected_sum = n * (n + 1) / 2
  actual_sum = nums.sum
  expected_sum - actual_sum
end

puts missing_number([3,0,1])
puts missing_number([0,1])
puts missing_number([9,6,4,2,3,5,7,0,1])
