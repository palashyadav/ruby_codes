# Climbing Stairs: Count ways to climb n stairs with 1 or 2 steps

def climb_stairs(n)
  return 1 if n <= 1
  
  prev1, prev2 = 1, 1
  
  (2..n).each do
    current = prev1 + prev2
    prev2 = prev1
    prev1 = current
  end
  
  prev1
end

puts climb_stairs(2)
puts climb_stairs(3)
puts climb_stairs(4)
puts climb_stairs(5)
