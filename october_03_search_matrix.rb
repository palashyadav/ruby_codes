# October 3: Search a 2D Matrix (Ruby randomized)
def search_matrix(matrix, target)
  return false if matrix.empty? || matrix[0].empty?
  m, n = matrix.size, matrix[0].size
  left, right = 0, m * n - 1
  while left <= right
    mid = (left + right) / 2
    val = matrix[mid / n][mid % n]
    if val == target
      return true
    elsif val < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  false
end

# Test
puts search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3) # true
puts search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13) # false
