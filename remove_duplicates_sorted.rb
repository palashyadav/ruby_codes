# Remove Duplicates from Sorted Array: In-place removal with count

def remove_duplicates(nums)
  return 0 if nums.empty?
  
  k = 1
  (1...nums.length).each do |i|
    if nums[i] != nums[i - 1]
      nums[k] = nums[i]
      k += 1
    end
  end
  
  k
end

arr1 = [1, 1, 2]
puts remove_duplicates(arr1)
puts arr1.inspect

arr2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
puts remove_duplicates(arr2)
puts arr2.inspect
