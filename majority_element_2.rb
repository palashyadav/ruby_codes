# Majority Element II: Elements appearing more than n/3 times

def majority_element(nums)
  counts = {}
  candidates = {}
  threshold = nums.length / 3
  
  nums.each do |num|
    if candidates.key?(num)
      candidates[num] += 1
    elsif candidates.length < 2
      candidates[num] = 1
    else
      new_candidates = {}
      candidates.each do |k, v|
        new_candidates[k] = v - 1
        new_candidates.delete(k) if new_candidates[k] == 0
      end
      candidates = new_candidates
    end
  end
  
  candidates.each { |k, _| candidates[k] = 0 }
  nums.each { |num| candidates[num] += 1 if candidates.key?(num) }
  
  result = []
  candidates.each do |num, count|
    result << num if count > threshold
  end
  
  result
end

p majority_element([3,2,3])
p majority_element([1,1,1,3,3,2,2,2])
