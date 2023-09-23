# September 23: Find All Anagrams in a String (Ruby randomized)
def find_anagrams(s, p)
  return [] if s.length < p.length
  res = []
  phash = Array.new(26, 0)
  shash = Array.new(26, 0)
  p.length.times { |i| phash[p[i].ord - 'a'.ord] += 1; shash[s[i].ord - 'a'.ord] += 1 }
  res << 0 if phash == shash
  (p.length...s.length).each do |i|
    shash[s[i].ord - 'a'.ord] += 1
    shash[s[i - p.length].ord - 'a'.ord] -= 1
    res << (i - p.length + 1) if phash == shash
  end
  res
end

# Test
puts find_anagrams('cbaebabacd', 'abc').inspect # [0, 6]
puts find_anagrams('abab', 'ab').inspect # [0, 1, 2]
