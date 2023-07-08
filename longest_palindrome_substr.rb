# Longest Palindromic Substring: Find longest palindromic substring
def longest_palindrome(s)
  return s if s.size <= 1
  def expand_around_center(s, left, right)
    while left >= 0 && right < s.size && s[left] == s[right]
      left -= 1
      right += 1
    end
    s[(left + 1)...right]
  end
  longest = ""
  (0...s.size).each do |i|
    p1 = expand_around_center(s, i, i)
    p2 = expand_around_center(s, i, i + 1)
    longest = p1 if p1.size > longest.size
    longest = p2 if p2.size > longest.size
  end
  longest
end

puts longest_palindrome("babad")
puts longest_palindrome("cbbd")
