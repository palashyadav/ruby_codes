# Two Sum II: Find indices of two numbers that add up to target in sorted array

def two_sum(numbers, target)
  left, right = 0, numbers.length - 1
  while left < right
    sum = numbers[left] + numbers[right]
    if sum == target
      return [left + 1, right + 1]
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end
  []
end

p two_sum([2,7,11,15], 9)
p two_sum([2,3,4], 6)
p two_sum([-1,0], -1)
