# LRU Cache: Implement with O(1) get and put operations using HashMap and DLL

class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @cache = {}
    @head = Node.new(0, 0)
    @tail = Node.new(0, 0)
    @head.next = @tail
    @tail.prev = @head
  end

  def get(key)
    return -1 unless @cache[key]
    node = @cache[key]
    remove_node(node)
    add_to_head(node)
    node.val
  end

  def put(key, value)
    if @cache[key]
      node = @cache[key]
      node.val = value
      remove_node(node)
      add_to_head(node)
    else
      if @cache.size >= @capacity
        remove_node(@tail.prev)
        @cache.delete(@tail.prev.key)
      end
      node = Node.new(key, value)
      @cache[key] = node
      add_to_head(node)
    end
  end

  private

  def remove_node(node)
    node.prev.next = node.next
    node.next.prev = node.prev
  end

  def add_to_head(node)
    node.next = @head.next
    node.prev = @head
    @head.next.prev = node
    @head.next = node
  end

  class Node
    attr_accessor :key, :val, :next, :prev
    def initialize(key, val)
      @key = key
      @val = val
    end
  end
end

cache = LRUCache.new(2)
cache.put(1, 1)
cache.put(2, 2)
puts cache.get(1)
cache.put(3, 3)
puts cache.get(2)
