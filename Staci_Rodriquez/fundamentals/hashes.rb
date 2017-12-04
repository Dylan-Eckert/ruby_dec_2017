# .delete(key) => deletes and returns a value associated with the key
hash = {:first_name => "Coding", :last_name => "Dojo"} 
hash.delete(:last_name)
p hash

# .empty? => returns true if hash contains no key-value pairs
p hash.empty?

# .has_key?(key) => true or false
p hash.has_key?(:last_name)

# .has_value?(value) => true or false
p hash.has_value?('Coding')