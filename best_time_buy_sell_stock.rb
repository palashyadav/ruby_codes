# Best Time to Buy and Sell Stock: Maximum profit from one transaction

def max_profit(prices)
  return 0 if prices.length < 2
  
  min_price = prices[0]
  max_profit = 0
  
  (1...prices.length).each do |i|
    potential_profit = prices[i] - min_price
    max_profit = potential_profit if potential_profit > max_profit
    min_price = prices[i] if prices[i] < min_price
  end
  
  max_profit
end

puts max_profit([7, 1, 5, 3, 6, 4])
puts max_profit([7, 6, 4, 3, 1])
puts max_profit([2, 4, 1, 7, 5, 11])
