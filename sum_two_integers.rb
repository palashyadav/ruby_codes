# Sum of Two Integers: Add two integers without using + or - operator
def get_sum(a, b)
  mask = 0xFFFFFFFF
  while b != 0
    carry = ((a & b) << 1) & mask
    a = (a ^ b) & mask
    b = carry
  end
  if a > 0x7FFFFFFF
    ~(a ^ mask)
  else
    a
  end
end

puts get_sum(1, 2)
puts get_sum(2, 3)
puts get_sum(-1, 1)
