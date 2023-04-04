# N-Queens: All solutions for n-queens puzzle

def solve_n_queens(n)
  result = []
  board = Array.new(n) { '.' * n }
  cols = Set.new
  diag1 = Set.new
  diag2 = Set.new
  
  def backtrack(row, board, cols, diag1, diag2, n, result)
    if row == n
      result << board.map(&:dup)
      return
    end
    
    (0...n).each do |col|
      if cols.include?(col) || diag1.include?(row - col) || diag2.include?(row + col)
        next
      end
      
      board[row] = board[row][0...col] + 'Q' + board[row][col + 1..-1]
      cols.add(col)
      diag1.add(row - col)
      diag2.add(row + col)
      
      backtrack(row + 1, board, cols, diag1, diag2, n, result)
      
      board[row] = board[row][0...col] + '.' + board[row][col + 1..-1]
      cols.delete(col)
      diag1.delete(row - col)
      diag2.delete(row + col)
    end
  end
  
  backtrack(0, board, cols, diag1, diag2, n, result)
  result
end

p solve_n_queens(4)
