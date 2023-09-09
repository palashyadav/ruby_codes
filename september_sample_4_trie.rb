# Implement Trie: Prefix tree insert, search, startsWith
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
    word.each_char do |c|
      node.children[c] ||= TrieNode.new
      node = node.children[c]
    end
    node.is_word = true
  end

  def search(word)
    node = @root
    word.each_char do |c|
      return false unless node.children.key?(c)
      node = node.children[c]
    end
    node.is_word
  end

  def starts_with(prefix)
    node = @root
    prefix.each_char do |c|
      return false unless node.children.key?(c)
      node = node.children[c]
    end
    true
  end
end

trie = Trie.new
trie.insert("apple")
puts trie.search("apple")
puts trie.search("app")
puts trie.starts_with("app")
