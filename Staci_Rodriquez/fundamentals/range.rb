#Ranges

a = (1..10)

puts "Class Name: #{a.class}"

puts "It does include 7!" if a.include? 7

puts "The last number in the range is " + a.last.to_s

puts "The max number in the range is " + a.max.to_s

puts "The min number in the range is " + a.min.to_s