def new_user greeting= "welcome", fname: "first", lname: "last"
  puts "#{greeting}, #{fname} #{lname}"
end
me = {fname: "Dylan", lname: "Eckert"}
new_user "Hello", me

me.delete(:fname)
p me
p me.empty?
p me.has_key?(:fname)
p me.has_value?("Eckert")
