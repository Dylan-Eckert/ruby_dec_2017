#### myEnumerable ####

module MyEnumerable
  def my_each
    # your code here!
  end
end

class Array
   include MyEnumerable
end
p [1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
p [1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40