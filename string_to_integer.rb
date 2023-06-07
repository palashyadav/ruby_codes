# String to Integer: Convert a string to 32-bit signed integer with overflow handling
def my_atoi(s)
  s = s.strip
  return 0 if s.empty?
  sign = 1
  idx = 0
  if s[0] == '+' || s[0] == '-'
    sign = -1 if s[0] == '-'
    idx = 1
  end
  result = 0
  while idx < s.size && s[idx].match?(/\d/)
    result = result * 10 + s[idx].to_i
    result = 2147483647 if result > 2147483647
    idx += 1
  end
  sign * result
end

puts my_atoi("42")
puts my_atoi("   -42")
puts my_atoi("4193 with words")
puts my_atoi("words and 987")
puts my_atoi("-91283472332")
