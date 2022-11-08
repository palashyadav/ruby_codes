# Find sum of digits in a number

def sum_of_digits(n)
  n.abs.to_s.chars.map(&:to_i).sum
end

puts sum_of_digits(123)      # 6
puts sum_of_digits(9999)     # 36
puts sum_of_digits(0)        # 0
puts sum_of_digits(-456)     # 15
