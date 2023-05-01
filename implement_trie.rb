# Implement Trie: Prefix tree for efficient string searching

class TrieNode
  attr_accessor :children, :is_end_of_word
  
  def initialize
    @children = {}
    @is_end_of_word = false
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end
  
  def insert(word)
    node = @root
    word.each_char do |c|
      node.children[c] ||= TrieNode.new
      node = node.children[c]
    end
    node.is_end_of_word = true
  end
  
  def search(word)
    node = find_node(word)
    return !node.nil? && node.is_end_of_word
  end
  
  def starts_with(prefix)
    !find_node(prefix).nil?
  end
  
  private
  
  def find_node(word)
    node = @root
    word.each_char do |c|
      return nil unless node.children.key?(c)
      node = node.children[c]
    end
    node
  end
end

trie = Trie.new
trie.insert("apple")
puts trie.search("apple")
puts trie.search("app")
puts trie.starts_with("app")
trie.insert("app")
puts trie.search("app")
