#Assignment 3 Range

x = (1..20)

puts "The maximun value of the array is: " + x.max.to_s
puts "The minimun value of the array is: " + x.min.to_s
puts "The last value of the array is: " + x.last.to_s
puts x.include?(5)
puts x.include?(30)

c = ("A".."Z")
puts c.to_a.shuffle.to_s
