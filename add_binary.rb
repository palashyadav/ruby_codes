# Add Binary: Add two binary strings and return sum as binary string

def add_binary(a, b)
  i, j = a.length - 1, b.length - 1
  carry = 0
  result = ''
  
  while i >= 0 || j >= 0 || carry > 0
    sum = carry
    sum += a[i].to_i if i >= 0
    sum += b[j].to_i if j >= 0
    result = (sum % 2).to_s + result
    carry = sum / 2
    i -= 1
    j -= 1
  end
  result
end

puts add_binary("11", "1")
puts add_binary("1010", "1011")
puts add_binary("0", "0")
