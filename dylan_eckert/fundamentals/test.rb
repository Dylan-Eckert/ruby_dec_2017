puts "--- Testing Fundamentals ---"
puts "-- Loop testing"

puts "- while loop testing"
# declare runner and endpoint before running while loop
runner = 0
endpoint = 5
while runner < endpoint do
  puts "run #{runner}"
  runner += 1
  #can break out of the loop early with a break condition
  # break must be after what you want to puts/print
  break if runner == 3
  # run 0 run 1 run 2
end

puts "- for loop .. testing"
# .. includes both 0 and 5
# 0 1 2 3 4 5
for i in 0..5
  puts "#{i}"
  #can break out of the loop early with a break condition
  # break must be after what you want to puts/print
  break if i == 3
  # 0 1 2 3
end

puts "- for loop ... testing"
# ... EXCLUDES 5
# 0 1 2 3 4
for i in 0...5
  # can skip an index in the loop using next condition
  # next must be before what you want to puts/print
  next if i == 3
  # 0 1 2 4
  puts "#{i}"
end

puts "-- Methods Testing"
# define the method name with def, end the method with end
def hello_world
  puts "hello world"
end
# call upon the method by typing the name of the method
hello_world

puts "- input method testing"
# declare parameters after naming the method, separated by commas
def say_hello name1, name2
  puts "hello, #{name1} and #{name2}"
end
say_hello "dylan", "liam" # => "hello, dylan and liam"
puts "- default params"
# declare default parameters like this
def say_hellos name1="dylan", name2="liam"
  puts "hello, #{name1} and #{name2}"
end
say_hellos # => "hello, dylan and liam"
say_hellos "bob" # => "hello, bob and liam"
