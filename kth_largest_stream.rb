# Kth Largest Element in Stream: Maintain k-size min heap

class KthLargest
  def initialize(k, nums)
    @k = k
    @heap = nums.sort.reverse[0...k]
  end
  
  def add(val)
    @heap << val
    @heap.sort!.reverse!
    @heap.pop if @heap.length > @k
    @heap[0]
  end
end

kth_largest = KthLargest.new(3, [4, 5, 8, 2])
puts kth_largest.add(3)
puts kth_largest.add(5)
puts kth_largest.add(10)
puts kth_largest.add(9)
puts kth_largest.add(4)
