# Rearrange String K Distance Apart: Arrange string so characters are k apart
def rearrange_string(s, k)
  return s if k <= 1
  freq = Hash.new(0)
  s.each_char { |c| freq[c] += 1 }
  max_freq = freq.values.max
  if (max_freq - 1) * k + 1 > s.size
    return ""
  end
  result = [""] * s.size
  idx = 0
  (1..max_freq).each do |_|
    freq.sort_by { |_, v| -v }.each do |char, count|
      break if count < 1
      if idx >= s.size
        return ""
      end
      result[idx] = char
      idx += k
      freq[char] -= 1
    end
    idx = result.index("") || s.size if result.include?("")
  end
  result.join
end

puts rearrange_string("aaadbbcc", 3)
puts rearrange_string("abc", 0)
