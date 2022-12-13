# Join array elements with delimiter

def join_array(arr, delimiter)
  arr.join(delimiter)
end

puts join_array(["a", "b", "c"], ",")       # a,b,c
puts join_array([1, 2, 3], "-")             # 1-2-3
puts join_array(["hello", "world"], " ")    # hello world
