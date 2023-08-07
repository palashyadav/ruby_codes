# Inorder Successor in BST: Find inorder successor of given node
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0)
    @val = val
    @left = nil
    @right = nil
  end
end

def inorder_successor(root, p)
  successor = nil
  curr = root
  while !curr.nil?
    if curr.val > p.val
      successor = curr
      curr = curr.left
    else
      curr = curr.right
    end
  end
  successor
end

def inorder_successor_with_parent(node, p)
  if !p.right.nil?
    curr = p.right
    while !curr.left.nil?
      curr = curr.left
    end
    return curr
  end
  curr = node
  successor = nil
  while !curr.nil?
    if curr.val > p.val
      successor = curr
      curr = curr.left
    else
      curr = curr.right
    end
  end
  successor
end
