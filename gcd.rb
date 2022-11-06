# Challenge: Write a function that finds the GCD (Greatest Common Divisor) of two numbers

def gcd(a, b)
  while b != 0
    temp = b
    b = a % b
    a = temp
  end
  a.abs
end

# Test cases
puts gcd(48, 18)        # Output: 6
puts gcd(100, 50)       # Output: 50
puts gcd(17, 19)        # Output: 1
puts gcd(0, 5)          # Output: 5
puts gcd(-12, 8)        # Output: 4
