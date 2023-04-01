# Median of Two Sorted Arrays: Find median without merging

def find_median_sorted_arrays(nums1, nums2)
  if nums1.length > nums2.length
    return find_median_sorted_arrays(nums2, nums1)
  end
  
  low, high = 0, nums1.length
  
  while low <= high
    partition1 = (low + high) / 2
    partition2 = (nums1.length + nums2.length + 1) / 2 - partition1
    
    left1 = partition1 == 0 ? -Float::INFINITY : nums1[partition1 - 1]
    right1 = partition1 == nums1.length ? Float::INFINITY : nums1[partition1]
    left2 = partition2 == 0 ? -Float::INFINITY : nums2[partition2 - 1]
    right2 = partition2 == nums2.length ? Float::INFINITY : nums2[partition2]
    
    if left1 <= right2 && left2 <= right1
      total_len = nums1.length + nums2.length
      return (([left1, left2].max + [right1, right2].min) / 2.0) if total_len.even?
      return [left1, left2].max.to_f if total_len.odd?
    elsif left1 > right2
      high = partition1 - 1
    else
      low = partition1 + 1
    end
  end
end

puts find_median_sorted_arrays([1, 3], [2])
puts find_median_sorted_arrays([1, 2], [3, 4])
