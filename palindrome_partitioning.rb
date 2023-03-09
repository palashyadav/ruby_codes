# Palindrome Partitioning: All ways to partition string into palindromic substrings

def partition(s)
  result = []
  current = []
  
  def backtrack(s, start, current, result, memo)
    if start == s.length
      result << current.dup
      return
    end
    
    (start...s.length).each do |end_idx|
      if is_palindrome?(s, start, end_idx)
        current << s[start..end_idx]
        backtrack(s, end_idx + 1, current, result, memo)
        current.pop
      end
    end
  end
  
  def is_palindrome?(s, left, right)
    while left < right
      return false if s[left] != s[right]
      left += 1
      right -= 1
    end
    true
  end
  
  backtrack(s, 0, current, result, {})
  result
end

p partition("nitin")
p partition("aab")
