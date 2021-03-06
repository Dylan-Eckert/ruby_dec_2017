class User < ApplicationRecord
  validates :fname, :lname, :email, presence: true, length:{in: 2..20}
  validates :age, numericality:{only_integer: true, greater_than: 9, less_than: 151}
end

# irb(main):003:0> User.create(fname:"j",lname:"dued",age:"27",email:"email").errors.full_messages
#    (0.3ms)  begin transaction
#    (0.1ms)  rollback transaction
# => ["Fname is too short (minimum is 2 characters)"]

# user = User.new
# user.fname = "dude"
# user.lname = "bro"
# user.email = "email"
# user.age = 5
# irb(main):009:0> user.save
#    (0.1ms)  begin transaction
#    (0.1ms)  rollback transaction
# => false
# irb(main):011:0> user.errors.full_messages
# => ["Age must be greater than 9"]
# saving a new user to a variable (user in this case) and then running errors stores all the errors in that variable for displaying errors
