# Filter odd numbers from array

def filter_odd(arr)
  arr.select { |num| num.odd? }
end

puts filter_odd([1, 2, 3, 4, 5, 6]).inspect      # [1, 3, 5]
puts filter_odd([2, 4, 6]).inspect               # []
puts filter_odd([1, 3, 5, 7]).inspect            # [1, 3, 5, 7]
