# November 10: Trie (Ruby randomized)
class TrieNode
  attr_accessor :children, :is_word
  def initialize
    @children = {}
    @is_word = false
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end

  def insert(word)
    node = @root
    word.chars.each do |c|
      node.children[c] ||= TrieNode.new
      node = node.children[c]
    end
    node.is_word = true
  end

  def search(word)
    node = @root
    word.chars.each do |c|
      return false unless node.children[c]
      node = node.children[c]
    end
    node.is_word
  end

  def starts_with(prefix)
    node = @root
    prefix.chars.each do |c|
      return false unless node.children[c]
      node = node.children[c]
    end
    true
  end
end

# Test
trie = Trie.new
trie.insert('apple')
puts trie.search('apple') # true
puts trie.search('app') # false
puts trie.starts_with('app') # true
trie.insert('app')
puts trie.search('app') # true
