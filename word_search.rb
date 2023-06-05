# Word Search: Check if a word exists in a 2D board using backtracking
def exist(board, word)
  return false if board.empty? || board[0].empty?
  m, n = board.size, board[0].size
  def dfs(board, word, idx, i, j, m, n)
    return true if idx == word.size
    return false if i < 0 || i >= m || j < 0 || j >= n || board[i][j] != word[idx]
    char = board[i][j]
    board[i][j] = '#'
    result = dfs(board, word, idx + 1, i + 1, j, m, n) ||
             dfs(board, word, idx + 1, i - 1, j, m, n) ||
             dfs(board, word, idx + 1, i, j + 1, m, n) ||
             dfs(board, word, idx + 1, i, j - 1, m, n)
    board[i][j] = char
    result
  end
  (0...m).each do |i|
    (0...n).each do |j|
      return true if dfs(board, word, 0, i, j, m, n)
    end
  end
  false
end

board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
puts exist(board, "ABCCED")
puts exist(board, "SEE")
puts exist(board, "ABCB")
