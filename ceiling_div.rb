# Ceiling division

def ceiling_div(num, divisor)
  (num.to_f / divisor).ceil
end

puts ceiling_div(10, 3)      # 4
puts ceiling_div(20, 5)      # 4
puts ceiling_div(7, 2)       # 4
