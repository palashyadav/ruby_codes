# Basic Calculator III: Parse and evaluate expression with +, -, *, /

def calculate(s)
  s = s.gsub(/\s+/, '')
  stack = []
  num = 0
  op = '+'
  
  (0...s.length).each do |i|
    c = s[i]
    
    if c.match?(/\d/)
      num = num * 10 + c.to_i
    end
    
    if !c.match?(/\d/) || i == s.length - 1
      case op
      when '+'
        stack.push(num)
      when '-'
        stack.push(-num)
      when '*'
        stack.push(stack.pop * num)
      when '/'
        stack.push((stack.pop.to_f / num).to_i)
      end
      op = c if c.match?(/[-+*\/]/)
      num = 0
    end
  end
  
  stack.sum
end

puts calculate("3+2*2")
puts calculate(" 6-4 / 2 ")
puts calculate("2*(5+5*2)/3+(6/2)*5")
