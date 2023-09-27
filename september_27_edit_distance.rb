# September 27: Edit Distance (Ruby randomized)
def min_distance(word1, word2)
  m, n = word1.length, word2.length
  dp = Array.new(m+1) { Array.new(n+1, 0) }
  (0..m).each { |i| dp[i][0] = i }
  (0..n).each { |j| dp[0][j] = j }
  (1..m).each do |i|
    (1..n).each do |j|
      if word1[i-1] == word2[j-1]
        dp[i][j] = dp[i-1][j-1]
      else
        dp[i][j] = 1 + [dp[i-1][j], dp[i][j-1], dp[i-1][j-1]].min
      end
    end
  end
  dp[m][n]
end

# Test
puts min_distance('horse', 'ros') # 3
puts min_distance('intention', 'execution') # 5
