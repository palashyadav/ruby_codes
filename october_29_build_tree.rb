# October 29: Construct Binary Tree from Preorder and Inorder Traversal (Ruby randomized)
def build_tree(preorder, inorder)
  return nil if preorder.empty? || inorder.empty?
  root_val = preorder[0]
  root = TreeNode.new(root_val)
  idx = inorder.index(root_val)
  root.left = build_tree(preorder[1..idx], inorder[0...idx])
  root.right = build_tree(preorder[idx+1..-1], inorder[idx+1..-1])
  root
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
preorder = [3,9,20,15,7]
inorder = [9,3,15,20,7]
root = build_tree(preorder, inorder)
def inorder_traversal(node)
  return [] unless node
  inorder_traversal(node.left) + [node.val] + inorder_traversal(node.right)
end
puts inorder_traversal(root).inspect # [9,3,15,20,7]
