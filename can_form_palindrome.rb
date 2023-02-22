def can_form_palindrome(s)
  char_count = Hash.new(0)
  s.each_char { |c| char_count[c] += 1 if c != ' ' }
  
  odd_count = char_count.values.count { |v| v.odd? }
  odd_count <= 1
end

puts can_form_palindrome("abccccdd")
puts can_form_palindrome("abc")
puts can_form_palindrome("aab")
