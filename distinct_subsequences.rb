# Distinct Subsequences: Count number of distinct subsequences of s matching t
def num_distinct(s, t)
  m, n = s.size, t.size
  dp = Array.new(m + 1) { Array.new(n + 1, 0) }
  (0..m).each { |i| dp[i][0] = 1 }
  (1..m).each do |i|
    (1..n).each do |j|
      dp[i][j] = dp[i - 1][j]
      dp[i][j] += dp[i - 1][j - 1] if s[i - 1] == t[j - 1]
    end
  end
  dp[m][n]
end

puts num_distinct("rabbbit", "rabbit")
puts num_distinct("babgbag", "bag")
