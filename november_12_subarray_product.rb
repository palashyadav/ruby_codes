# November 12: Subarray Product Less Than K (Ruby randomized)
def num_subarray_product_less_than_k(nums, k)
  return 0 if k <= 1
  prod = 1
  left = 0
  count = 0
  nums.each_with_index do |val, right|
    prod *= val
    while prod >= k && left <= right
      prod /= nums[left]
      left += 1
    end
    count += (right - left + 1)
  end
  count
end

# Test
puts num_subarray_product_less_than_k([10,5,2,6], 100) # 8
puts num_subarray_product_less_than_k([1,2,3], 0) # 0
