# Challenge: Write a function that calculates the factorial of a number

def factorial(n)
  return 1 if n <= 1
  n * factorial(n - 1)
end

# Test cases
puts factorial(0)        # Output: 1
puts factorial(1)        # Output: 1
puts factorial(5)        # Output: 120
puts factorial(10)       # Output: 3628800
puts factorial(3)        # Output: 6
