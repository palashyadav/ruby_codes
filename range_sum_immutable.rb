# Range Sum Query - Immutable: Query sum in range [left, right]
class NumArray
  def initialize(nums)
    @prefix = [0]
    nums.each { |num| @prefix << @prefix[-1] + num }
  end

  def sum_range(left, right)
    @prefix[right + 1] - @prefix[left]
  end
end

arr = NumArray.new([-2, 0, 3, -5, 2, -1])
puts arr.sum_range(0, 2)
puts arr.sum_range(2, 5)
puts arr.sum_range(0, 5)
