# Number of 1 Bits: Count the number of 1-bits in binary representation of a positive integer
def hamming_weight(n)
  count = 0
  while n > 0
    count += 1 if n & 1 == 1
    n >>= 1
  end
  count
end

puts hamming_weight(11)
puts hamming_weight(128)
puts hamming_weight(2147483645)
