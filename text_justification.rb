# Text Justification: Format text with full justification

def full_justify(words, max_width)
  result = []
  current_line = []
  current_length = 0
  
  words.each do |word|
    if current_length + word.length + current_line.length > max_width
      result << justify_line(current_line, max_width, false)
      current_line = []
      current_length = 0
    end
    
    current_line << word
    current_length += word.length
  end
  
  result << justify_line(current_line, max_width, true)
  result
end

def justify_line(words, max_width, is_last)
  if is_last
    line = words.join(' ')
    line += ' ' * (max_width - line.length)
    return line
  end
  
  total_spaces = max_width - words.map(&:length).sum
  gaps = words.length - 1
  
  return words[0] + ' ' * total_spaces if gaps == 0
  
  spaces_per_gap = total_spaces / gaps
  extra_spaces = total_spaces % gaps
  
  line = ''
  words.each_with_index do |word, i|
    line += word
    if i < gaps
      spaces = spaces_per_gap + (i < extra_spaces ? 1 : 0)
      line += ' ' * spaces
    end
  end
  
  line
end

words = ["This", "is", "an", "example", "of", "text", "justification."]
p full_justify(words, 16)
