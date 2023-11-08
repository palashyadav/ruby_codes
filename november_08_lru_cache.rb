# November 08: LRU Cache (Ruby randomized)
class LRUCache
  def initialize(capacity)
    @cap = capacity
    @map = {}
    @head = Node.new(0,0)
    @tail = Node.new(0,0)
    @head.next = @tail
    @tail.prev = @head
  end

  def get(key)
    return -1 unless @map[key]
    node = @map[key]
    remove(node)
    insert(node)
    node.val
  end

  def put(key, value)
    if @map[key]
      remove(@map[key])
    end
    node = Node.new(key, value)
    insert(node)
    @map[key] = node
    if @map.size > @cap
      lru = @head.next
      remove(lru)
      @map.delete(lru.key)
    end
  end

  private
  def remove(node)
    node.prev.next = node.next
    node.next.prev = node.prev
  end

  def insert(node)
    prev = @tail.prev
    prev.next = node
    node.prev = prev
    node.next = @tail
    @tail.prev = node
  end

  class Node
    attr_accessor :key, :val, :prev, :next
    def initialize(k,v)
      @key = k; @val = v; @prev = nil; @next = nil
    end
  end
end

# Test
cache = LRUCache.new(2)
cache.put(1,1)
cache.put(2,2)
puts cache.get(1) # 1
cache.put(3,3)
puts cache.get(2) # -1
cache.put(4,4)
puts cache.get(1) # -1
puts cache.get(3) # 3
puts cache.get(4) # 4
