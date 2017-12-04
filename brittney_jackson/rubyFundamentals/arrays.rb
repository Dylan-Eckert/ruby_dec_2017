###### Arrays Assignment ######
a = [1,2,3,4,5,6]
b = ['dog', 'cat', 'rabbit', 'lizard']
c = [true, false]

#.at or .fetch

puts a.fetch(3)
puts b.fetch(2)
puts c.fetch(1)

puts '*' *20

#.delete

c.delete(false)
puts c

puts '*' *20

#.reverse

a.reverse!
p a

puts '*' *20

#.length

puts b.length

puts '*' *20
#.sort

b.sort!
p b

puts '*' *20

#.slice

p a[1..3]

puts '*' *20

#.shuffle

p b.shuffle

puts '*' *20

#.join

p a.join(',')

puts '*' *20

#.insert

c.insert(1, false)
p c

puts '*' *20
#values_at() -> returns an array with values specified in the param

p c.values_at(1)



