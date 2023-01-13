# Count elements matching condition

def count_if(arr, &block)
  arr.count(&block)
end

puts count_if([1, 2, 3, 4, 5]) { |x| x > 2 }        # 3
puts count_if([10, 20, 30]) { |x| x < 25 }          # 2
puts count_if(["a", "bb", "ccc"]) { |x| x.length > 1 }  # 2
