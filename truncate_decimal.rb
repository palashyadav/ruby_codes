# Truncate decimal places

def truncate_decimal(num, places)
  (num * 10**places).truncate / 10.0**places
end

puts truncate_decimal(3.14159, 2)      # 3.14
puts truncate_decimal(2.99999, 1)      # 2.9
puts truncate_decimal(5.12345, 3)      # 5.123
