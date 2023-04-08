# Optimal Binary Search Tree: Minimum cost BST with weighted keys

def min_cost_bst(keys, freq)
  n = keys.length
  dp = Array.new(n + 1) { Array.new(n + 1, 0) }
  sum = Array.new(n + 1) { Array.new(n + 1, 0) }
  
  (1..n).each { |i| sum[i][i] = freq[i - 1] }
  
  (1..n).each { |i| dp[i][i] = freq[i - 1] }
  
  (2..n).each do |len|
    (1..n - len + 1).each do |i|
      j = i + len - 1
      dp[i][j] = Float::INFINITY
      
      sum[i][j] = sum[i][j - 1] + freq[j - 1]
      
      (i..j).each do |r|
        cost = dp[i][r - 1] + dp[r + 1][j] + sum[i][j]
        dp[i][j] = cost if cost < dp[i][j]
      end
    end
  end
  
  dp[1][n]
end

keys = [10, 12, 20]
freq = [34, 8, 50]
puts min_cost_bst(keys, freq)
