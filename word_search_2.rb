# Word Search II: Find all words from board using Trie

class TrieNode
  attr_accessor :children, :word
  
  def initialize
    @children = {}
    @word = nil
  end
end

def find_words(board, words)
  return [] if board.empty? || words.empty?
  
  trie = TrieNode.new
  words.each do |word|
    node = trie
    word.each_char do |c|
      node.children[c] ||= TrieNode.new
      node = node.children[c]
    end
    node.word = word
  end
  
  result = []
  
  def dfs(board, i, j, node, result)
    return if i < 0 || i >= board.length || j < 0 || j >= board[0].length
    
    char = board[i][j]
    return if char == '#' || !node.children.key?(char)
    
    next_node = node.children[char]
    
    if next_node.word
      result << next_node.word
      next_node.word = nil
    end
    
    board[i][j] = '#'
    dfs(board, i + 1, j, next_node, result)
    dfs(board, i - 1, j, next_node, result)
    dfs(board, i, j + 1, next_node, result)
    dfs(board, i, j - 1, next_node, result)
    board[i][j] = char
  end
  
  board.each_with_index do |row, i|
    row.each_with_index do |_, j|
      dfs(board, i, j, trie, result)
    end
  end
  
  result
end

board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]]
words = ["oath","pea","eat","rain"]
p find_words(board, words)
