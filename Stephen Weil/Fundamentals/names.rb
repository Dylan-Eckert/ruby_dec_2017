a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

def unpack_names arr
    puts "You have " + arr.length.to_s + " names in the 'names' array"
    arr.each { |obj| puts "The name is '#{obj[:first_name]} #{obj[:last_name]}'" }
end

unpack_names names