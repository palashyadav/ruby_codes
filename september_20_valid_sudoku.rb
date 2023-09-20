# Valid Sudoku: Check if a 9x9 board is valid according to Sudoku rules

def is_valid_sudoku(board)
  rows = Array.new(9) { Hash.new(0) }
  cols = Array.new(9) { Hash.new(0) }
  boxes = Array.new(9) { Hash.new(0) }
  (0...9).each do |i|
    (0...9).each do |j|
      val = board[i][j]
      next if val == '.'
      return false if rows[i][val] == 1
      rows[i][val] += 1
      return false if cols[j][val] == 1
      cols[j][val] += 1
      box_index = (i / 3) * 3 + j / 3
      return false if boxes[box_index][val] == 1
      boxes[box_index][val] += 1
    end
  end
  true
end

board = [
  ['5','3','.','.','7','.','.','.','.'],
  ['6','.','.','1','9','5','.','.','.'],
  ['.','9','8','.','.','.','.','6','.'],
  ['8','.','.','.','6','.','.','.','3'],
  ['4','.','.','8','.','3','.','.','1'],
  ['7','.','.','.','2','.','.','.','6'],
  ['.','6','.','.','.','.','2','8','.'],
  ['.','.','.','4','1','9','.','.','5'],
  ['.','.','.','.','8','.','.','7','9']
]
puts is_valid_sudoku(board)
