# Russian Doll Envelopes: Maximum nesting envelopes with LIS variant

def max_envelopes(envelopes)
  envelopes.sort! { |a, b| a[0] == b[0] ? b[1] <=> a[1] : a[0] <=> b[0] }
  
  heights = envelopes.map { |e| e[1] }
  
  def lis_binary_search(arr)
    tails = []
    arr.each do |h|
      pos = binary_search(tails, h)
      if pos == tails.length
        tails << h
      else
        tails[pos] = h
      end
    end
    tails.length
  end
  
  def binary_search(arr, target)
    left, right = 0, arr.length
    while left < right
      mid = (left + right) / 2
      if arr[mid] < target
        left = mid + 1
      else
        right = mid
      end
    end
    left
  end
  
  lis_binary_search(heights)
end

envelopes = [[2,100],[3,4],[4,5],[5,6],[6,7],[6,8],[6,9],[7,8],[8,7],[9,9]]
puts max_envelopes(envelopes)
