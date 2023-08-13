# Fraction to Recurring Decimal: Convert fraction to decimal with recurring part
def fraction_to_decimal(numerator, denominator)
  result = ""
  sign = (numerator < 0) ^ (denominator < 0)
  result += "-" if sign
  numerator = numerator.abs
  denominator = denominator.abs
  result += (numerator / denominator).to_s
  remainder = numerator % denominator
  return result if remainder == 0
  result += "."
  map = {}
  while remainder != 0
    return result if map.key?(remainder)
    map[remainder] = result.size
    remainder *= 10
    result += (remainder / denominator).to_s
    remainder %= denominator
  end
  result
end

puts fraction_to_decimal(1, 2)
puts fraction_to_decimal(1, 6)
puts fraction_to_decimal(4, 333)
