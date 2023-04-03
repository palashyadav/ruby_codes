# Restore IP Addresses: Valid combinations of IP addresses from digits

def restore_ip_addresses(s)
  result = []
  
  def is_valid(segment)
    return false if segment.empty? || segment.length > 3
    return false if segment.length > 1 && segment[0] == '0'
    segment.to_i <= 255
  end
  
  def backtrack(s, start, path, result)
    if path.length == 4
      result << path.join('.') if start == s.length
      return
    end
    
    return if start >= s.length || path.length > 4
    
    (start...s.length).each do |i|
      segment = s[start..i]
      if is_valid(segment)
        path << segment
        backtrack(s, i + 1, path, result)
        path.pop
      end
    end
  end
  
  backtrack(s, 0, [], result)
  result
end

p restore_ip_addresses("25525511135")
p restore_ip_addresses("0000")
p restore_ip_addresses("101023")
