# each iterates over range, passing each value as argument to block
(1..5).each { |i| puts i }
("a".."f").each { |letter| puts letter }

# .. is inclusive, ... is EXCLUSIVE of end value
test = (-10..10)
puts "This includes 10!" if test.include?(10)
test2 = (-10...10)
puts "This does not include 10!" unless test2.include?(10)

# last returns object with last value, if given argument, returns array with last X values
puts test.last
puts test2.last(3).to_s

# max returns largest value in range
puts test.max

# min returns smallest value in range
puts test.min