q = {:first_name => "Justin", :last_name => "Quiros"}
q.delete(:first_name)
p q

i = {}
p i.empty?

p q.has_key?(:last_name)

p q.has_value?("Quiros")


def new_user user = {first_name: "first", last_name: "last"}
  puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
end
our_user = {first_name: 'Justin', last_name: "Quiros"}
new_user # => "Welcome to our site, first last!"
new_user our_user # => "Welcome to our site, Oscar Vasquez!"
