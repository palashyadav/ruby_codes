# Find nth Fibonacci number

def fibonacci(n)
  return 0 if n <= 0
  return 1 if n <= 2
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
end

puts fibonacci(1)        # 1
puts fibonacci(5)        # 3
puts fibonacci(10)       # 34
puts fibonacci(7)        # 8
