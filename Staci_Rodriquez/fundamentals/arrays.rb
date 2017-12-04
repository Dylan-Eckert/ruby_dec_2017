a = ["Staci", "Aladin", "Izabella", "Jenna", "Grandma"]
b = [24, 32, 6, 0, 60]
c = ["Staci", 24]

# returns the first value or the 0th index of the array
puts a[0]

# adds the two arrays into one array then takes out the things in the new array that match what is in the c array
x = (a+b)-c
puts x.to_s

puts a.at 2

puts b.fetch 4

puts a.delete("Grandma")
puts a

puts b.reverse

puts c.length

puts a.sort

puts a.slice 3

puts b.shuffle.join('-')

puts a.insert(2, "Leia")

puts a.values_at(1,2,3)