# Binary Tree Upside Down: Reverse binary tree structure upside down
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def upside_down_binary_tree(root)
  return root if root.nil? || (root.left.nil? && root.right.nil?)
  new_root = upside_down_binary_tree(root.left)
  root.left.left = root.right
  root.left.right = root
  root.left = nil
  root.right = nil
  new_root
end

def upside_down_binary_tree_iterative(root)
  return root if root.nil?
  curr = root
  parent = nil
  parent_right = nil
  while !curr.nil?
    left = curr.left
    curr.left = parent_right
    parent_right = curr.right
    curr.right = parent
    parent = curr
    curr = left
  end
  parent
end
