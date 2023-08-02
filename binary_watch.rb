# Binary Watch: List all times shown on binary watch for given leds
def read_binary_watch(num)
  result = []
  (0..11).each do |h|
    (0..59).each do |m|
      if h.bit_length + m.bit_length == num || (h.to_s(2).count('1') + m.to_s(2).count('1')) == num
        result << "#{h}:#{m.to_s.rjust(2, '0')}"
      end
    end
  end
  result
end

puts read_binary_watch(0).inspect
puts read_binary_watch(1).inspect
