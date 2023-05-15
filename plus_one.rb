# Plus One: Add one to number represented as array of digits

def plus_one(digits)
  n = digits.length
  (n - 1).downto(0) do |i|
    if digits[i] < 9
      digits[i] += 1
      return digits
    else
      digits[i] = 0
    end
  end
  [1] + digits
end

p plus_one([1,2,3])
p plus_one([4,3,2,1])
p plus_one([9])
