# October 26: Validate Binary Search Tree (Ruby randomized)
def is_valid_bst(root, min_val = -Float::INFINITY, max_val = Float::INFINITY)
  return true unless root
  return false if root.val <= min_val || root.val >= max_val
  is_valid_bst(root.left, min_val, root.val) && is_valid_bst(root.right, root.val, max_val)
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
root = TreeNode.new(2)
root.left = TreeNode.new(1)
root.right = TreeNode.new(3)
puts is_valid_bst(root) # true
root2 = TreeNode.new(5)
root2.left = TreeNode.new(1)
root2.right = TreeNode.new(4)
root2.right.left = TreeNode.new(3)
root2.right.right = TreeNode.new(6)
puts is_valid_bst(root2) # false
