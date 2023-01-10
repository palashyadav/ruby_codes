# Get last n elements

def last_n(arr, n)
  arr.drop([arr.length - n, 0].max)
end

puts last_n([1, 2, 3, 4, 5], 3).inspect      # [3, 4, 5]
puts last_n([10, 20, 30], 1).inspect         # [30]
puts last_n(["a", "b"], 5).inspect           # ["a", "b"]
