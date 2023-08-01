# Superpower Set: Generate all subsets of array (power set)
def subsets_with_duplicates(nums)
  nums.sort!
  result = [[]]
  i = 0
  while i < nums.size
    start_size = result.size
    duplicate_count = 1
    while i + duplicate_count < nums.size && nums[i] == nums[i + duplicate_count]
      duplicate_count += 1
    end
    (0...start_size).each do |j|
      (1..duplicate_count).each do |k|
        result << result[j] + [nums[i]] * k
      end
    end
    i += duplicate_count
  end
  result
end

puts subsets_with_duplicates([1,2,2]).inspect
puts subsets_with_duplicates([4,4,4,1,0]).inspect
