test = ["some", "test", "words"]

# any returns true if the block returns true for any of the elements

puts test.any? { |word| word.length >= 4 }
puts test.any? { |word| word.length < 4 }

# each calls the block once for each element

test.each { |word| word.capitalize! }
print test, "\n"

# collect returns a new array with the results of running block on each element

new_array = (1..4).collect { |i| 2**i }
print new_array, "\n"

# detect/find - returns first element for which block is true

puts test.detect { |word| word.length == 4 }
puts "No words longer than 5!" unless test.detect { |word| word.length > 5 }

# find_all returns an array containing all elements for which block is true

found_stuff = (1..100).find_all { |i| i % 25 == 0 }
print found_stuff, "\n"

# reject is the opposite of find_all - returns array containing all elements for which block is NOT true

filtered_stuff = (1..100).reject { |i| i % 2 == 0 }
print filtered_stuff, "\n"

# upto runs block up to the provided number (method of an INT)

3.upto(7) { |i| puts i**2 }
1.upto(5) { puts "Hey Hey Hey!" }