# Alien Dictionary: Topological sort for character ordering

def alien_order(words)
  graph = {}
  in_degree = {}
  
  words.each do |word|
    word.each_char { |c| graph[c] ||= Set.new; in_degree[c] ||= 0 }
  end
  
  (0...words.length - 1).each do |i|
    w1, w2 = words[i], words[i + 1]
    min_len = [w1.length, w2.length].min
    
    (0...min_len).each do |j|
      if w1[j] != w2[j]
        unless graph[w1[j]].include?(w2[j])
          graph[w1[j]].add(w2[j])
          in_degree[w2[j]] += 1
        end
        break
      end
    end
  end
  
  queue = in_degree.select { |_, d| d == 0 }.keys
  result = []
  
  while !queue.empty?
    char = queue.shift
    result << char
    
    graph[char].each do |neighbor|
      in_degree[neighbor] -= 1
      queue << neighbor if in_degree[neighbor] == 0
    end
  end
  
  result.length == graph.length ? result.join : ""
end

words = ["wrt", "wrf", "er", "ett", "rftt"]
puts alien_order(words)
