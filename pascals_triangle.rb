# Pascal's Triangle: Generate first numRows of Pascal's triangle

def generate(num_rows)
  triangle = []
  (0...num_rows).each do |i|
    row = Array.new(i + 1, 1)
    (1...i).each do |j|
      row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j]
    end
    triangle << row
  end
  triangle
end

p generate(5)
p generate(1)
