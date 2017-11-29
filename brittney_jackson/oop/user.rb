### user practice ###


# class User
# 	attr_accessor :first_name, :last_name

# 	def initialize(f_name, l_name)
#     	@first_name = f_name
#     	@last_name = l_name
# 	end

# 	def full_name
#     	puts "I am #{@first_name} #{@last_name}"
#   	end
  
#   	def say_hello
#    		puts "Hello!"
#  	end
# end

# u = User.new("John", "Doe")
# u.full_name # => "I am John Doe"
# u.say_hello



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
    puts "Branch Name: #{@branch_name}" 
    puts "Branch Address: #{@branch_address}"
  end 
end 
# now using above class to create objects 
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
branch.display_all 
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
branch2.display_all






