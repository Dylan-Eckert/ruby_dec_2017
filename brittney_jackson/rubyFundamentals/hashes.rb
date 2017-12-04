#### Hashes ####

# .delete(key) => deletes and returns a value associated with the key

h = {:first_name => "Coding", :last_name => "Dojo"} 
h.delete(:last_name)
p h

puts '_' *20

# .empty? => returns true if hash contains no key-value pairs

p h.empty?

puts '_' *20

# .has_key?(key) => true or false

p h.has_key?(:last_name)


puts '_' *20

# .has_value?(value) => true or false

p h.has_value?('Coding')