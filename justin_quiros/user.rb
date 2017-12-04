class User
	@first_name

	@last_name
	# attr_reader :first_name
	# attr_writer :first_name
	# attr_reader :last_name
	# attr_writer :last_name
	attr_accessor :first_name, :last_name

	def initialize(f_name, l_name)
		@first_name = f_name
		@last_name = l_name
	end

	def full_name
		puts "I am #{@first_name} #{@last_name}"
	end

	def say_hello
		puts "Hello"
	end

	def self.foo
		puts "This is a class method"
	end
	# This is longer way of writing what is above.  
	# These are setter and getter methods
	# VVVVVV
	# def first_name=(val)
	# 	@first_name = val
	# end
	# def first_name
	# 	@first_name
	# end
end

justin = User.new("Justin", "Quiros")
# p justin.first_name + " " + justin.last_name

puts justin.full_name
puts User.foo
# user1 = User.new
# user2 = User.new
# user1.first_name = "Justin"
# user1.last_name = "Quiros"
# p user1.first_name
# p user1.last_name