# Binary Search Tree Iterator: In-order traversal with next() and hasNext()

class BSTIterator
  def initialize(root)
    @stack = []
    @current = root
  end
  
  def next
    while !@current.nil?
      @stack.push(@current)
      @current = @current.left
    end
    
    @current = @stack.pop
    val = @current.val
    @current = @current.right
    val
  end
  
  def has_next
    !@stack.empty? || !@current.nil?
  end
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

root = TreeNode.new(7)
root.left = TreeNode.new(3)
root.right = TreeNode.new(15)
root.right.left = TreeNode.new(9)
root.right.right = TreeNode.new(20)

iterator = BSTIterator.new(root)
puts iterator.next
puts iterator.next
puts iterator.has_next
puts iterator.next
puts iterator.has_next
puts iterator.next
puts iterator.has_next
puts iterator.next
puts iterator.has_next
