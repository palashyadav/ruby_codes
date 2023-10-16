# October 16: Word Break (Ruby randomized)
def word_break(s, word_dict)
  dp = Array.new(s.length + 1, false)
  dp[0] = true
  (1..s.length).each do |i|
    (0...i).each do |j|
      if dp[j] && word_dict.include?(s[j...i])
        dp[i] = true
        break
      end
    end
  end
  dp[s.length]
end

# Test
puts word_break('leetcode', %w[leet code]) # true
puts word_break('applepenapple', %w[apple pen]) # true
puts word_break('catsandog', %w[cats dog sand and cat]) # false
