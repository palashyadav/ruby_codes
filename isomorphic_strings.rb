# Isomorphic Strings: Determine if two strings are isomorphic (char mapping one-to-one)
def is_isomorphic(s, t)
  return false if s.size != t.size
  map_st = {}
  map_ts = {}
  s.each_char.with_index do |c, i|
    if map_st.key?(c)
      return false if map_st[c] != t[i]
    else
      map_st[c] = t[i]
    end
    if map_ts.key?(t[i])
      return false if map_ts[t[i]] != c
    else
      map_ts[t[i]] = c
    end
  end
  true
end

puts is_isomorphic("egg", "add")
puts is_isomorphic("foo", "bar")
puts is_isomorphic("paper", "title")
