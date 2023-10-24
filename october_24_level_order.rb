# October 24: Binary Tree Level Order Traversal (Ruby randomized)
def level_order(root)
  return [] unless root
  res, queue = [], [root]
  while !queue.empty?
    level = []
    queue.size.times do
      node = queue.shift
      level << node.val
      queue << node.left if node.left
      queue << node.right if node.right
    end
    res << level
  end
  res
end

# Test
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end
root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)
puts level_order(root).inspect # [[3],[9,20],[15,7]]
