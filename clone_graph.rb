# Clone Graph: Deep copy connected graph with DFS

class Node
  attr_accessor :val, :neighbors
  
  def initialize(val = 0)
    @val = val
    @neighbors = []
  end
end

def clone_graph(node)
  return nil if node.nil?
  
  visited = {}
  
  def dfs(node, visited)
    return visited[node.val] if visited.key?(node.val)
    
    cloned = Node.new(node.val)
    visited[node.val] = cloned
    
    node.neighbors.each do |neighbor|
      cloned.neighbors << dfs(neighbor, visited)
    end
    
    cloned
  end
  
  dfs(node, visited)
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)

node1.neighbors = [node2, node4]
node2.neighbors = [node1, node3]
node3.neighbors = [node2, node4]
node4.neighbors = [node1, node3]

result = clone_graph(node1)
puts result.val
