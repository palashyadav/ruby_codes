# Get first n elements

def first_n(arr, n)
  arr.take(n)
end

puts first_n([1, 2, 3, 4, 5], 3).inspect      # [1, 2, 3]
puts first_n([10, 20, 30], 1).inspect         # [10]
puts first_n(["a", "b"], 5).inspect           # ["a", "b"]
