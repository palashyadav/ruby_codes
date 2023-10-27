# October 27: Symmetric Tree (Ruby randomized)
def is_symmetric(root)
  return true unless root
  is_mirror = lambda do |t1, t2|
    return true unless t1 || t2
    return false unless t1 && t2 && t1.val == t2.val
    is_mirror.call(t1.left, t2.right) && is_mirror.call(t1.right, t2.left)
  end
  is_mirror.call(root.left, root.right)
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
root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(2)
root.left.left = TreeNode.new(3)
root.left.right = TreeNode.new(4)
root.right.left = TreeNode.new(4)
root.right.right = TreeNode.new(3)
puts is_symmetric(root) # true
