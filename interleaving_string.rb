# Interleaving String: Check if s3 is interleaving of s1 and s2

def is_interleave(s1, s2, s3)
  m, n = s1.length, s2.length
  return false if m + n != s3.length
  
  dp = Array.new(m + 1) { Array.new(n + 1, false) }
  dp[0][0] = true
  
  (1..m).each { |i| dp[i][0] = dp[i - 1][0] && s1[i - 1] == s3[i - 1] }
  (1..n).each { |j| dp[0][j] = dp[0][j - 1] && s2[j - 1] == s3[j - 1] }
  
  (1..m).each do |i|
    (1..n).each do |j|
      if s1[i - 1] == s3[i + j - 1]
        dp[i][j] = dp[i][j] || dp[i - 1][j]
      end
      
      if s2[j - 1] == s3[i + j - 1]
        dp[i][j] = dp[i][j] || dp[i][j - 1]
      end
    end
  end
  
  dp[m][n]
end

puts is_interleave("aabcc", "dbbca", "aadbbcbcac")
puts is_interleave("aabcc", "dbbca", "aadbbbaccc")
puts is_interleave("", "", "")
