# Serialize and Deserialize Binary Tree

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def serialize(root)
  result = []
  queue = [root]
  
  while !queue.empty?
    node = queue.shift
    if node.nil?
      result << "null"
    else
      result << node.val.to_s
      queue << node.left
      queue << node.right
    end
  end
  
  result.join(',')
end

def deserialize(data)
  return nil if data.empty?
  
  values = data.split(',')
  root = TreeNode.new(values[0].to_i)
  queue = [root]
  i = 1
  
  while !queue.empty? && i < values.length
    node = queue.shift
    if values[i] != "null"
      node.left = TreeNode.new(values[i].to_i)
      queue << node.left
    end
    i += 1
    
    if i < values.length && values[i] != "null"
      node.right = TreeNode.new(values[i].to_i)
      queue << node.right
    end
    i += 1
  end
  
  root
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)

serialized = serialize(root)
puts serialized
deserialized = deserialize(serialized)
puts deserialized.val
