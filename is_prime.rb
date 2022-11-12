# Check if number is prime

def is_prime?(n)
  return false if n < 2
  (2..Math.sqrt(n).to_i).each { |i| return false if n % i == 0 }
  true
end

puts is_prime?(2)        # true
puts is_prime?(17)       # true
puts is_prime?(20)       # false
puts is_prime?(1)        # false
puts is_prime?(97)       # true
