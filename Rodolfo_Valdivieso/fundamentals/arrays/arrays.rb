# Assignment 2 Arrays.

a = [5, 6, 7, 8, 9, 10, 0]
b = ["Hello", "Coding", "Dojo", "Ruby"]
c = ["Yes"]
puts a[0]
puts b[2]
puts a+b

b.insert(b.length, "test")
print "Length: "
print b.length
puts ""
puts b
puts b.reverse
puts b.sort
puts b.slice(0,3)
puts b.join("*")
puts a.shuffle
b.delete("Hello")
puts b.at(3)
puts a.values_at(0,5)