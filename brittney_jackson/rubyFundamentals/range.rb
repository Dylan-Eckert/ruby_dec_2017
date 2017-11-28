#### Range Assignment ###

x = (1..25)

p x
p x.to_a

#.include?(value) => true or false
puts 'The range includes 15' if x.include? 15

#.last => returns the last object in range
puts 'The last number of this range is ' + x.last.to_s

#.max => returns the maximum value in range
puts 'The MAX number of this range is ' + x.max.to_s

#.min => returns the minimum value in range
puts 'The MIN number of this range is ' + x.min.to_s



