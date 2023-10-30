# October 30: Populating Next Right Pointers in Each Node (Ruby randomized)
class Node
  attr_accessor :val, :left, :right, :next
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
    @next = nil
  end
end

def connect(root)
  return nil unless root
  queue = [root]
  while !queue.empty?
    size = queue.size
    prev = nil
    size.times do
      node = queue.shift
      node.next = prev
      prev = node
      queue << node.right if node.right
      queue << node.left if node.left
    end
  end
  root
end

# Test
root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right.right = Node.new(7)
connect(root)
puts root.left.next.val # 3
puts root.left.left.next.val # 5
