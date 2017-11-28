test = [1,2,3,4,5,6,7,0,1.5]

# these are pretty much the same except fetch throws error if out of bounds (second argument is a default)
# negative indices count backwards (-1 is the last, -2 is the second to last, etc)
puts test.fetch(3) {|i| puts "#{i} is out of bounds"}
puts test.at(-2)
puts test[-2]

# this will just return a blank line (because puts does \n)
puts test.at(40)

# throws no error if the item isn't there to delete
test.delete("potato")
test.delete(3)
puts test.to_s

# reverse with ! will permanently reverse array
puts test.reverse!.to_s
puts test.to_s

puts test.length

# sort without ! will return shallow copy, next puts will still be out of order
puts test.sort.to_s
puts test.to_s

# slice returns a subarray starting at value one with length of value 2 
# (optional - without 2nd arg just returns idx at first val)
puts test.slice(2, 3).to_s
puts test.slice(3..5).to_s

# using exclamation will actually delete
test.slice!(4)
puts test.to_s

# shuffle randomizes order of elements, no exclamation = new array, with exclamation = changes in place
puts test.shuffle.to_s
puts test.to_s
test.shuffle!.to_s
puts test.to_s

# join binds together elements as string, with optional parameter connecting them
puts test.join(" - ")
puts test

# first argument is index, will insert subsequent values BEFORE element with that index
test.insert(2, "hey", "wassup")
puts test.to_s
# if negative index is used, will insert values AFTER
test.insert(-1, "this is at the end now!")
puts test.to_s

# returns an array containing elements at given indices or within given ranges (.. is inclusive, ... is EXCLUSIVE of last number)
puts test.values_at(1,4).to_s
puts test.values_at(3..6).to_s