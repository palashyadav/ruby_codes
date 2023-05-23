# Sqrt(x): Compute and return the integer square root of x

def my_sqrt(x)
  return 0 if x == 0
  left, right = 1, x
  while left <= right
    mid = (left + right) / 2
    if mid * mid == x
      return mid
    elsif mid * mid < x
      left = mid + 1
    else
      right = mid - 1
    end
  end
  right
end

puts my_sqrt(4)
puts my_sqrt(8)
puts my_sqrt(0)
puts my_sqrt(1)
