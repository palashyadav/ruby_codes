# Implement Queue using Stacks: Implement queue using stacks
class MyQueue
  def initialize
    @push_stack = []
    @pop_stack = []
  end

  def push(x)
    @push_stack.push(x)
  end

  def pop
    move_if_empty
    @pop_stack.pop
  end

  def peek
    move_if_empty
    @pop_stack[-1]
  end

  def empty
    @push_stack.empty? && @pop_stack.empty?
  end

  private

  def move_if_empty
    if @pop_stack.empty?
      while !@push_stack.empty?
        @pop_stack.push(@push_stack.pop)
      end
    end
  end
end

q = MyQueue.new
q.push(1)
q.push(2)
puts q.peek
puts q.pop
puts q.empty
