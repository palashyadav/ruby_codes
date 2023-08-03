# House Robber II: Rob houses in circular arrangement (non-adjacent)
def rob_circular(nums)
  return 0 if nums.empty?
  return nums[0] if nums.size == 1
  def rob_linear(arr)
    return 0 if arr.empty?
    return arr[0] if arr.size == 1
    prev2, prev1 = arr[0], [arr[0], arr[1]].max
    (2...arr.size).each do |i|
      curr = [arr[i] + prev2, prev1].max
      prev2 = prev1
      prev1 = curr
    end
    prev1
  end
  [rob_linear(nums[0...-1]), rob_linear(nums[1..-1])].max
end

puts rob_circular([1,2,3,1])
puts rob_circular([2,3,2])
puts rob_circular([5,3,4,11,2])
