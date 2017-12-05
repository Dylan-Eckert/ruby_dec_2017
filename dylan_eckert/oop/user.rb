class User
  attr_accessor :fname, :lname
  def initialize(fname, lname)
    @fname = fname
    @lname = lname
    self
  end
  def full_name
    puts "I am #{@fname} #{@lname}"
    self
  end
  def hello
    puts "Hello"
    self
  end
  def self.created
    puts "User created"
  end
end
dylan = User.new("Dylan", "Eckert")
User.created
dylan.full_name.hello
