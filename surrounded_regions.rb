# Surrounded Regions: Flip O's surrounded by X's using DFS

def solve(board)
  return if board.empty?
  
  rows, cols = board.length, board[0].length
  
  def dfs(i, j, board)
    return if i < 0 || i >= board.length || j < 0 || j >= board[0].length || board[i][j] != 'O'
    
    board[i][j] = 'T'
    dfs(i + 1, j, board)
    dfs(i - 1, j, board)
    dfs(i, j + 1, board)
    dfs(i, j - 1, board)
  end
  
  (0...rows).each do |i|
    dfs(i, 0, board) if board[i][0] == 'O'
    dfs(i, cols - 1, board) if board[i][cols - 1] == 'O'
  end
  
  (0...cols).each do |j|
    dfs(0, j, board) if board[0][j] == 'O'
    dfs(rows - 1, j, board) if board[rows - 1][j] == 'O'
  end
  
  (0...rows).each do |i|
    (0...cols).each do |j|
      if board[i][j] == 'O'
        board[i][j] = 'X'
      elsif board[i][j] == 'T'
        board[i][j] = 'O'
      end
    end
  end
  
  board
end

board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
p solve(board)
