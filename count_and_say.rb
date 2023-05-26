# Count and Say: Generate the nth term of the count-and-say sequence

def count_and_say(n)
  return "1" if n == 1
  prev = count_and_say(n - 1)
  result = ""
  count = 1
  (1...prev.length).each do |i|
    if prev[i] == prev[i - 1]
      count += 1
    else
      result += count.to_s + prev[i - 1]
      count = 1
    end
  end
  result += count.to_s + prev[-1]
  result
end

puts count_and_say(1)
puts count_and_say(4)
puts count_and_say(5)
