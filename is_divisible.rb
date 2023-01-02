# Check if number is divisible by another

def is_divisible(num, divisor)
  num % divisor == 0
end

puts is_divisible(10, 5)      # true
puts is_divisible(15, 3)      # true
puts is_divisible(7, 2)       # false
puts is_divisible(0, 5)       # true
