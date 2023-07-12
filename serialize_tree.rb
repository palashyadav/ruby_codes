# Serialize and Deserialize Binary Tree: Convert tree to/from string
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0)
    @val = val
    @left = nil
    @right = nil
  end
end

def serialize(root)
  result = []
  queue = [root]
  while !queue.empty?
    node = queue.shift
    if node.nil?
      result.push("null")
    else
      result.push(node.val.to_s)
      queue.push(node.left)
      queue.push(node.right)
    end
  end
  result.join(",")
end

def deserialize(data)
  return nil if data.empty?
  values = data.split(",")
  root = TreeNode.new(values[0].to_i)
  queue = [root]
  i = 1
  while i < values.size
    node = queue.shift
    next if node.nil?
    if values[i] != "null"
      node.left = TreeNode.new(values[i].to_i)
      queue.push(node.left)
    end
    i += 1
    if i < values.size && values[i] != "null"
      node.right = TreeNode.new(values[i].to_i)
      queue.push(node.right)
    end
    i += 1
  end
  root
end
