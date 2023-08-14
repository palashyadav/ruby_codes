# Compare Version Numbers: Compare two version strings
def compare_version(version1, version2)
  v1 = version1.split('.').map(&:to_i)
  v2 = version2.split('.').map(&:to_i)
  max_len = [v1.size, v2.size].max
  (0...max_len).each do |i|
    num1 = i < v1.size ? v1[i] : 0
    num2 = i < v2.size ? v2[i] : 0
    return 1 if num1 > num2
    return -1 if num1 < num2
  end
  0
end

puts compare_version("1.0", "1.0.0")
puts compare_version("0.1", "0.1.0")
puts compare_version("1.0.1", "1.0.2")
