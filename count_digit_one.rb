# Number of Digit One: Count total digit 1 appearing in all numbers 1 to n
def count_digit_one(n)
  if n < 1
    return 0
  end
  count = 0
  factor = 1
  while factor <= n
    higher = n / (factor * 10)
    cur = (n / factor) % 10
    lower = n % factor
    if cur == 0
      count += higher * factor
    elsif cur == 1
      count += higher * factor + lower + 1
    else
      count += (higher + 1) * factor
    end
    factor *= 10
  end
  count
end

puts count_digit_one(13)
puts count_digit_one(0)
puts count_digit_one(824883294)
