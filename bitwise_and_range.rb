# Bitwise AND of Numbers Range: Compute AND of all numbers in range [m, n]
def range_bitwise_and(m, n)
  shift = 0
  while m != n
    m >>= 1
    n >>= 1
    shift += 1
  end
  m << shift
end

puts range_bitwise_and(5, 7)
puts range_bitwise_and(0, 0)
puts range_bitwise_and(1, 2147483647)
