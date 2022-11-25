# Find all prime numbers up to n

def primes_up_to(n)
  (2..n).select { |num| (2...num).none? { |i| num % i == 0 } }
end

puts primes_up_to(10).inspect      # [2, 3, 5, 7]
puts primes_up_to(20).inspect      # [2, 3, 5, 7, 11, 13, 17, 19]
puts primes_up_to(2).inspect       # [2]
