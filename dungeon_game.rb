# Dungeon Game: Calculate minimum HP needed to survive dungeon
def calculate_minimum_hp(dungeon)
  m, n = dungeon.size, dungeon[0].size
  dp = Array.new(m) { Array.new(n) }
  dp[m - 1][n - 1] = [1, 1 - dungeon[m - 1][n - 1]].max
  (m - 1).downto(0) do |i|
    (n - 1).downto(0) do |j|
      next if i == m - 1 && j == n - 1
      if i == m - 1
        dp[i][j] = [1, dp[i][j + 1] - dungeon[i][j]].max
      elsif j == n - 1
        dp[i][j] = [1, dp[i + 1][j] - dungeon[i][j]].max
      else
        dp[i][j] = [1, [dp[i + 1][j], dp[i][j + 1]].min - dungeon[i][j]].max
      end
    end
  end
  dp[0][0]
end

puts calculate_minimum_hp([[-3,5],[-1,-2]])
puts calculate_minimum_hp([[0]])
