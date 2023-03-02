# Wildcard Matching: Support * and ? patterns

def is_match(s, p)
  dp = Array.new(s.length + 1) { Array.new(p.length + 1, false) }
  dp[0][0] = true
  
  (1..p.length).each do |j|
    dp[0][j] = p[j-1] == '*' && dp[0][j-1]
  end
  
  (1..s.length).each do |i|
    (1..p.length).each do |j|
      if p[j-1] == '*'
        dp[i][j] = dp[i-1][j] || dp[i][j-1]
      elsif p[j-1] == '?' || s[i-1] == p[j-1]
        dp[i][j] = dp[i-1][j-1]
      end
    end
  end
  
  dp[s.length][p.length]
end

puts is_match("aa", "a")
puts is_match("aa", "*")
puts is_match("cb", "?a")
puts is_match("adceb", "*a*b")
puts is_match("acdcb", "a*c?b")
