# Reverse Integer: Reverse bits of a 32-bit integer
def reverse_bits(n)
  result = 0
  32.times do
    result = (result << 1) | (n & 1)
    n >>= 1
  end
  result
end

puts reverse_bits(43261596)
puts reverse_bits(4294967293)
