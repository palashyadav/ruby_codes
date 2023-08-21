# Single Number III: Find two elements appearing once, others appear twice
def single_number_iii(nums)
  xor_result = nums.reduce(0, :^)
  diff_bit = xor_result & (-xor_result)
  num1, num2 = 0, 0
  nums.each do |num|
    if (num & diff_bit) != 0
      num1 ^= num
    else
      num2 ^= num
    end
  end
  [num1, num2]
end

puts single_number_iii([1,2,1,3,2,5]).inspect
