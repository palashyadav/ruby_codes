# Palindromic Substrings: Count total number of palindromic substrings
def count_substrings(s)
  count = 0
  def expand_around_center(s, left, right)
    while left >= 0 && right < s.size && s[left] == s[right]
      left -= 1
      right += 1
    end
    right - left - 1
  end
  (0...s.size).each do |i|
    count += expand_around_center(s, i, i)
    count += expand_around_center(s, i, i + 1)
  end
  count
end

puts count_substrings("abc")
puts count_substrings("aaa")
