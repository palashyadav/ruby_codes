# Integer Break: Partition n into k positive integers to maximize product
def integer_break(n)
  return 1 if n <= 3
  dp = [0, 1, 1, 3]
  (4..n).each do |i|
    dp[i] = [3 * dp[i - 3], 2 * dp[i - 2]].max
  end
  dp[n]
end

puts integer_break(2)
puts integer_break(10)
puts integer_break(58)
