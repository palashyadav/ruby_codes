# Minimum Window Substring: Shortest substring containing all characters

def min_window(s, t)
  return "" if t.empty? || s.empty?
  
  dict_t = {}
  t.each_char { |c| dict_t[c] = (dict_t[c] || 0) + 1 }
  
  required = dict_t.length
  l, r = 0, 0
  formed = 0
  window_counts = {}
  
  ans = [Float::INFINITY, nil, nil]
  
  while r < s.length
    char = s[r]
    window_counts[char] = (window_counts[char] || 0) + 1
    
    if dict_t.key?(char) && window_counts[char] == dict_t[char]
      formed += 1
    end
    
    while formed == required && l <= r
      char = s[l]
      
      if r - l + 1 < ans[0]
        ans[0] = r - l + 1
        ans[1] = l
        ans[2] = r
      end
      
      window_counts[char] -= 1
      if dict_t.key?(char) && window_counts[char] < dict_t[char]
        formed -= 1
      end
      
      l += 1
    end
    
    r += 1
  end
  
  ans[0] == Float::INFINITY ? "" : s[ans[1]..ans[2]]
end

puts min_window("ADOBECODEBANC", "ABC")
puts min_window("a", "a")
