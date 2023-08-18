# Bulb Switcher: Calculate remaining bulbs after toggle operations
def bulb_switch(n)
  Math.sqrt(n).floor.to_i
end

puts bulb_switch(3)
puts bulb_switch(0)
puts bulb_switch(1)
