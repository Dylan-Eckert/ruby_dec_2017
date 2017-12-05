a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

namec = names.count
p "You have #{namec} names in the 'names' array"

def names greeting= "Name:", first_name: "first", last_name: "last"
  puts "#{greeting} '#{first_name} #{last_name}'"
end

puts names a
puts names b
puts names c
puts names d
puts names e
