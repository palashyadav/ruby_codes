# Subsets: Generate all subsets of array

def subsets(nums)
  result = [[]]
  
  nums.each do |num|
    result += result.map { |subset| subset + [num] }
  end
  
  result
end

p subsets([1, 2, 3])
p subsets([0])
p subsets([1, 2, 3, 4])
