# Sum of consecutive numbers

def sum_consecutive(n)
  (1..n).sum
end

puts sum_consecutive(5)        # 15
puts sum_consecutive(10)       # 55
puts sum_consecutive(1)        # 1
