# November 09: Find Median from Data Stream (Ruby randomized)
class MedianFinder
  def initialize
    @small = [] # max heap (store negative)
    @large = [] # min heap
  end

  def add_num(num)
    if @small.empty? || num <= -@small[0]
      heap_push(@small, -num)
    else
      heap_push(@large, num)
    end
    if @small.size > @large.size + 1
      heap_push(@large, -heap_pop(@small))
    elsif @large.size > @small.size
      heap_push(@small, -heap_pop(@large))
    end
  end

  def find_median
    return (-@small[0]) if @small.size > @large.size
    ((-@small[0]) + @large[0]) / 2.0
  end

  private
  def heap_push(heap, val)
    heap << val
    i = heap.size - 1
    while i > 0
      p = (i - 1) / 2
      if heap[p] > heap[i]
        heap[p], heap[i] = heap[i], heap[p]
        i = p
      else
        break
      end
    end
  end

  def heap_pop(heap)
    return nil if heap.empty?
    res = heap[0]
    last = heap.pop
    if !heap.empty?
      heap[0] = last
      i = 0
      while true
        l = 2*i + 1
        r = 2*i + 2
        smallest = i
        smallest = l if l < heap.size && heap[l] < heap[smallest]
        smallest = r if r < heap.size && heap[r] < heap[smallest]
        break if smallest == i
        heap[i], heap[smallest] = heap[smallest], heap[i]
        i = smallest
      end
    end
    res
  end
end

# Test
mf = MedianFinder.new
mf.add_num(1)
mf.add_num(2)
puts mf.find_median # 1.5
mf.add_num(3)
puts mf.find_median # 2
