# Lowest Common Ancestor: Find LCA of two nodes in BST

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0)
    @val = val
    @left = nil
    @right = nil
  end
end

def lowest_common_ancestor(root, p, q)
  if root.val > p.val && root.val > q.val
    lowest_common_ancestor(root.left, p, q)
  elsif root.val < p.val && root.val < q.val
    lowest_common_ancestor(root.right, p, q)
  else
    root
  end
end

root = TreeNode.new(6)
root.left = TreeNode.new(2)
root.right = TreeNode.new(8)
root.left.left = TreeNode.new(0)
root.left.right = TreeNode.new(4)
root.left.right.left = TreeNode.new(3)
root.left.right.right = TreeNode.new(5)
root.right.left = TreeNode.new(7)
root.right.right = TreeNode.new(9)

p_node = root.left
q_node = root.left.right
puts lowest_common_ancestor(root, p_node, q_node).val
