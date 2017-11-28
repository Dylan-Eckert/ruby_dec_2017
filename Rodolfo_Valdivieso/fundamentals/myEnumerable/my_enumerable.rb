#Creating our own module.
#In this example, I'm calling the method that I created once, 
# but I have a for loop inside and because I'm using Yield, 
# it will return to the block every time that I yield. Nice!!!

module MyEnumerable
  def my_each
    for x in self
    	yield x
    end
  end
end

class Array
   include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40