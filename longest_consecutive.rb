# Longest Consecutive Sequence: Find longest consecutive elements sequence
def longest_consecutive(nums)
  return 0 if nums.empty?
  num_set = Set.new(nums)
  longest_streak = 0
  num_set.each do |num|
    if !num_set.include?(num - 1)
      current_num = num
      current_streak = 1
      while num_set.include?(current_num + 1)
        current_num += 1
        current_streak += 1
      end
      longest_streak = [longest_streak, current_streak].max
    end
  end
  longest_streak
end

puts longest_consecutive([100,4,200,1,3,2])
puts longest_consecutive([0])
