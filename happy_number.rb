# Happy Number: Determine if a number is happy (repeatedly sum squares of digits until 1 or cycle)
def is_happy(n)
  def get_next(num)
    total = 0
    while num > 0
      digit = num % 10
      total += digit * digit
      num /= 10
    end
    total
  end
  seen = Set.new
  while n != 1 && !seen.include?(n)
    seen.add(n)
    n = get_next(n)
  end
  n == 1
end

puts is_happy(7)
puts is_happy(2)
puts is_happy(19)
