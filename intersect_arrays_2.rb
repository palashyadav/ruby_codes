# Intersection of Two Arrays II: Find intersection with duplicates

def intersect(nums1, nums2)
  counts = Hash.new(0)
  nums1.each { |num| counts[num] += 1 }
  result = []
  nums2.each do |num|
    if counts[num] > 0
      result << num
      counts[num] -= 1
    end
  end
  result
end

p intersect([1,2,2,1], [2,2])
p intersect([4,9,5], [9,4,9,8,4])
