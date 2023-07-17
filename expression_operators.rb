# Expression Add Operators: Add +,-,* between digits to achieve target value
def add_operators(num, target)
  result = []
  def backtrack(num, target, idx, current_str, current_val, last_val, result)
    if idx == num.size
      result << current_str if current_val == target
      return
    end
    (idx + 1..num.size).each do |i|
      if num[idx] == '0' && i > idx + 1
        break
      end
      curr = num[idx...i].to_i
      if idx == 0
        backtrack(num, target, i, curr.to_s, curr, curr, result)
      else
        backtrack(num, target, i, "#{current_str}+#{curr}", current_val + curr, curr, result)
        backtrack(num, target, i, "#{current_str}-#{curr}", current_val - curr, -curr, result)
        backtrack(num, target, i, "#{current_str}*#{curr}", current_val - last_val + last_val * curr, last_val * curr, result)
      end
    end
  end
  backtrack(num, target, 0, "", 0, 0, result)
  result
end

puts add_operators("123", 6).inspect
puts add_operators("232", 8).inspect
