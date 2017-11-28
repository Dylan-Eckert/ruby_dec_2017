=begin


This is how you 
comment out multiple lines. 

=end





# first_name = "Justin"
# last_name = "Quiros"

# # puts "Your name is " +first_name+" "+last_name
# # puts "First name is #{first_name} and last name is #{last_name}"
# # puts "First name is %s and last name is %s" % [first_name, last_name]
# z = 50
# puts "Value of z is #{z}"
# puts "Value of z is %d" % z

# puts "I am 6'1\" tall"

# # puts "hello"
# # puts "Coding"
# # puts "Dojo"

# # # print "hello"
# # print "Coding"
# x = 5
# y = 10
# z = x+y

# puts z


# BEGIN {
# 	puts "this runs before my puts"
# }

# END {
# 	puts "this runs after my puts"
# }

class CodingDojo
	@@no_of_branches = 0
	def initialize(id, name, address)
		@branch_id = id
		@branch_name = name
		@branch_address = address
		@@no_of_branches += 1
		puts "Created branch #{@@no_of_branches}"
	end
	def hello
		puts "Hello CodingDojo!"
	end
	def display_all
		puts "Branch ID: #{@branch_id}"
		puts "Branch name: #{@branch_name}"
		puts "Branch address: #{@branch_address}"
	end
end

branch = CodingDojo.new(177, "Alaska CodingDojo", "Anchorage AK")
branch.display_all
branch.hello

branch2 = CodingDojo.new(22, "Scranton CodingDojo", "Scranton PA")
branch2.display_all
