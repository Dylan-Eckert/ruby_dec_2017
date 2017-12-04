#Hashes Assignment
#Symbols
y = {:first_name => "Coding" , :last_name => "Dojo"}

puts "Y is " , y 
puts y[:first_name] , y[:last_name]

puts "Deleting first_name"
y.delete(:first_name)
puts "Y is " , y 

if y.has_key?(:first_name)
	puts "Key first_name exist"
else
	puts "Key first_name not exist"
end

if y.has_value?("Dojo")
	puts "Dojo exist"
else
	puts "Dojo not exist"
end

puts y.empty?

def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"      
end
our_user = {first_name: "Oscar", last_name: "Vazquez"}
new_user                  # => Welcome, first last
new_user "Hello", our_user # => Hello, Oscar Vazquez
