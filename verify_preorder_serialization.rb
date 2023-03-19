# Verify Preorder Serialization of Binary Tree

def is_valid_serialization(preorder)
  tokens = preorder.split(',')
  slots = 1
  
  tokens.each do |token|
    slots -= 1
    return false if slots < 0
    
    if token != '#'
      slots += 2
    end
  end
  
  slots == 0
end

puts is_valid_serialization("9,3,4,#,#,1,#,#,2,#,6,#,#")
puts is_valid_serialization("1,#")
puts is_valid_serialization("9,#,#,1")
