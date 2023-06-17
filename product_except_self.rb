# Product of Array Except Self: Return array where each element is product of all other elements
def product_except_self(nums)
  n = nums.size
  result = Array.new(n, 1)
  prefix = 1
  (0...n).each do |i|
    result[i] = prefix
    prefix *= nums[i]
  end
  suffix = 1
  (n - 1).downto(0) do |i|
    result[i] *= suffix
    suffix *= nums[i]
  end
  result
end

puts product_except_self([1,2,3,4]).inspect
puts product_except_self([2,3,4,5]).inspect
