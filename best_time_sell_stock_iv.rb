# Best Time to Buy and Sell Stock IV: Buy-sell k times for max profit
def max_profit_k(k, prices)
  return 0 if prices.size < 2 || k == 0
  if k >= prices.size / 2
    profit = 0
    (1...prices.size).each { |i| profit += [0, prices[i] - prices[i - 1]].max }
    return profit
  end
  buy = Array.new(k + 1, -Float::INFINITY)
  sell = Array.new(k + 1, 0)
  prices.each do |price|
    (1..k).reverse_each do |j|
      sell[j] = [sell[j], buy[j] + price].max
      buy[j] = [buy[j], sell[j - 1] - price].max
    end
  end
  sell[k]
end

puts max_profit_k(2, [3,2,6,5,0,3])
puts max_profit_k(2, [3])
