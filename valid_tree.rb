# Graph Valid Tree: Check if graph is a valid tree (connected, no cycles)
def valid_tree(n, edges)
  return false if edges.size != n - 1
  graph = Hash.new { |h, k| h[k] = [] }
  edges.each do |u, v|
    graph[u] << v
    graph[v] << u
  end
  visited = Set.new
  def dfs(node, parent, graph, visited)
    visited.add(node)
    graph[node].each do |neighbor|
      return false if neighbor == parent && visited.size > 1
      return false if visited.include?(neighbor)
      return false unless dfs(neighbor, node, graph, visited)
    end
    true
  end
  dfs(0, -1, graph, visited) && visited.size == n
end

puts valid_tree(5, [[0,1],[0,2],[0,3],[1,4]])
puts valid_tree(5, [[0,1],[1,2],[2,3],[1,3],[1,4]])
