# Merge K Sorted Lists: Merge multiple sorted linked lists
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

def merge_k_lists(lists)
  return nil if lists.empty?
  while lists.size > 1
    merged = []
    (0...lists.size).step(2) do |i|
      l1 = lists[i]
      l2 = i + 1 < lists.size ? lists[i + 1] : nil
      merged << merge_two(l1, l2)
    end
    lists = merged
  end
  lists[0]
end

def merge_two(l1, l2)
  dummy = ListNode.new(0)
  curr = dummy
  while l1 && l2
    if l1.val < l2.val
      curr.next = l1
      l1 = l1.next
    else
      curr.next = l2
      l2 = l2.next
    end
    curr = curr.next
  end
  curr.next = l1 || l2
  dummy.next
end
