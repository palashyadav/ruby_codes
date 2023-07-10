# Binary Tree Maximum Path Sum: Find max path sum in binary tree
def max_path_sum(root)
  max_sum = [-Float::INFINITY]
  def helper(node, max_sum)
    return 0 if node.nil?
    left = [0, helper(node.left, max_sum)].max
    right = [0, helper(node.right, max_sum)].max
    max_sum[0] = [max_sum[0], left + right + node.val].max
    [left + node.val, right + node.val].max
  end
  helper(root, max_sum)
  max_sum[0]
end

# Definition for a binary tree node
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
