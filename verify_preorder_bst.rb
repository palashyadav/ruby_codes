# Verify Preorder Serialization of BST: Validate serialized BST format
def is_valid_serialization(preorder)
  nodes = preorder.split(',')
  slots = 1
  nodes.each do |node|
    slots -= 1
    return false if slots < 0
    slots += 2 unless node == '#'
  end
  slots == 0
end

puts is_valid_serialization("9,3,4,#,#,1,#,#,2,#,6,#,#")
puts is_valid_serialization("1,#")
puts is_valid_serialization("9,#,#,1")
