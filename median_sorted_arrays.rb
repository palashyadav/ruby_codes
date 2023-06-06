# Median of Two Sorted Arrays: Find median of two sorted arrays with O(log min(m,n)) time
def find_median_sorted_arrays(nums1, nums2)
  if nums1.size > nums2.size
    nums1, nums2 = nums2, nums1
  end
  m, n = nums1.size, nums2.size
  imin, imax = 0, m
  while imin <= imax
    cut1 = (imin + imax) / 2
    cut2 = (m + n + 1) / 2 - cut1
    left1 = cut1 == 0 ? -Float::INFINITY : nums1[cut1 - 1]
    left2 = cut2 == 0 ? -Float::INFINITY : nums2[cut2 - 1]
    right1 = cut1 == m ? Float::INFINITY : nums1[cut1]
    right2 = cut2 == n ? Float::INFINITY : nums2[cut2]
    if left1 <= right2 && left2 <= right1
      return (m + n) % 2 == 0 ? ([left1, left2].max + [right1, right2].min) / 2.0 : [left1, left2].max
    elsif left1 > right2
      imax = cut1 - 1
    else
      imin = cut1 + 1
    end
  end
end

puts find_median_sorted_arrays([1,3], [2])
puts find_median_sorted_arrays([1,2], [3,4])
