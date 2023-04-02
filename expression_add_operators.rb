# Expression Add Operators: All ways to add +, -, * between digits

def add_operators(num, target)
  result = []
  
  def backtrack(num, target, index, current_expr, current_val, last_val, result)
    if index == num.length
      result << current_expr if current_val == target
      return
    end
    
    (index...num.length).each do |i|
      if i > index && num[index] == '0'
        break
      end
      
      current_num = num[index..i].to_i
      
      if index == 0
        backtrack(num, target, i + 1, current_num.to_s, current_num, current_num, result)
      else
        backtrack(num, target, i + 1, "#{current_expr}+#{current_num}", current_val + current_num, current_num, result)
        backtrack(num, target, i + 1, "#{current_expr}-#{current_num}", current_val - current_num, -current_num, result)
        backtrack(num, target, i + 1, "#{current_expr}*#{current_num}", current_val - last_val + last_val * current_num, last_val * current_num, result)
      end
    end
  end
  
  backtrack(num, target, 0, "", 0, 0, result)
  result
end

p add_operators("123", 6)
p add_operators("232", 8)
