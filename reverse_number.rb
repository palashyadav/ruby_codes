# Reverse a number

def reverse_number(num)
  num.to_s.reverse.to_i
end

puts reverse_number(123)       # 321
puts reverse_number(1000)      # 1
puts reverse_number(505)       # 505
