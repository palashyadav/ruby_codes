# Gas Station: Return starting station to complete circuit, or -1 if impossible
def can_complete_circuit(gas, cost)
  total_gas = 0
  total_cost = 0
  tank = 0
  start = 0
  (0...gas.size).each do |i|
    total_gas += gas[i]
    total_cost += cost[i]
    tank += gas[i] - cost[i]
    if tank < 0
      start = i + 1
      tank = 0
    end
  end
  return -1 if total_gas < total_cost
  start
end

puts can_complete_circuit([1,2,3,4,5], [3,4,5,1,2])
puts can_complete_circuit([2,3,4], [3,4,3])
