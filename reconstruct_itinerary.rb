# Reconstruct Itinerary: Find itinerary from tickets using Eulerian path
def find_itinerary(tickets)
  graph = Hash.new { |h, k| h[k] = [] }
  tickets.each { |src, dst| graph[src] << dst }
  graph.keys.each { |k| graph[k].sort! }
  stack = ["JFK"]
  path = []
  while !stack.empty?
    airport = stack.last
    if !graph[airport].empty?
      next_airport = graph[airport].shift
      stack.push(next_airport)
    else
      path.unshift(stack.pop)
    end
  end
  path
end

puts find_itinerary([["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]]).inspect
puts find_itinerary([["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]).inspect
