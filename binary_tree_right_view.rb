# Binary Tree Right Side View: Rightmost nodes at each level

def right_side_view(root)
  return [] if root.nil?
  
  result = []
  queue = [root]
  
  while !queue.empty?
    level_size = queue.length
    result << queue[-1].val
    
    level_size.times do
      node = queue.shift
      queue << node.left if !node.left.nil?
      queue << node.right if !node.right.nil?
    end
  end
  
  result
end
