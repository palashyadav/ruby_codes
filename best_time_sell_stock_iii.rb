# Best Time to Buy and Sell Stock III: Buy-sell twice for max profit
def max_profit(prices)
  return 0 if prices.size < 2
  left_profit = Array.new(prices.size, 0)
  left_min = prices[0]
  (1...prices.size).each do |i|
    left_min = [left_min, prices[i]].min
    left_profit[i] = [left_profit[i - 1], prices[i] - left_min].max
  end
  right_profit = Array.new(prices.size, 0)
  right_max = prices[-1]
  (prices.size - 2).downto(0) do |i|
    right_max = [right_max, prices[i]].max
    right_profit[i] = [right_profit[i + 1], right_max - prices[i]].max
  end
  (0...prices.size).map { |i| left_profit[i] + right_profit[i] }.max
end

puts max_profit([3,3,5,0,0,3,1,4])
puts max_profit([1,2,3,4,5])
puts max_profit([7,6,4,3,1])
