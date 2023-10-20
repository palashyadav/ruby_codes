# October 20: Climbing Stairs (Ruby randomized)
def climb_stairs(n)
  return 1 if n <= 1
  a, b = 1, 1
  (2..n).each { a, b = b, a + b }
  b
end

# Test
puts climb_stairs(2) # 2
puts climb_stairs(3) # 3
