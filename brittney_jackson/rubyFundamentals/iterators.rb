#### iterators exercise ####


#.any? { |obj| block } => true or false

p ["ant", "bear", "cat"].any? { |word| word.length >= 3 }

puts '*' *20

#.each => calls block once for each element in ruby self, passing that element as a block parameter.
p ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--

puts '*' *20
#.collect { |obj| block } => returns a new array with the results of running block once for every element in enum
p (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
p (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]

puts '*' *20
#.detect/.find => returns the first for which block is not false.
p (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
p (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35

puts '*' *20
#.find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
p (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

puts '*' *20
#.reject { |obj| block } => opposite of find_all
p (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

puts '*' *20
#.upto(limit) => iterates block up to the int number
p 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10

puts '*' *20   











