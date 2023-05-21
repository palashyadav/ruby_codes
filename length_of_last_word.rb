# Length of Last Word: Find length of last word in string

def length_of_last_word(s)
  s.strip!
  return 0 if s.empty?
  s.split(' ').last.length
end

puts length_of_last_word("Hello World")
puts length_of_last_word("   fly me   to   the moon  ")
puts length_of_last_word("luffy is still joyboy")
puts length_of_last_word("")
