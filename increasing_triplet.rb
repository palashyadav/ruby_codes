# Increasing Triplet Subsequence: Find increasing triplet in linear time
def increasing_triplet(nums)
  return false if nums.size < 3
  first = Float::INFINITY
  second = Float::INFINITY
  nums.each do |num|
    if num <= first
      first = num
    elsif num <= second
      second = num
    else
      return true
    end
  end
  false
end

puts increasing_triplet([1,2,0,2,1])
puts increasing_triplet([5,1,5,5,5])
puts increasing_triplet([1,5,0,4,1,3])
