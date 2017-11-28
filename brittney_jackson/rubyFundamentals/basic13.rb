##### Assignment: Basic 13 #####

## Print 1-255 ##
p (1..255).to_a

puts '*' *20
## Print odd numbers between 1-255 ##
p (1..255).find_all { |i| i % 2 == 1 }

puts '*' *20
## Print Sum ##
sum = 0
for i in 0..255 
	puts "New number: #{i} Sum: #{sum += i}" 
end

puts '*' *20
## Iterating through an array ##

x = [1,3,5,7,9,13]

x.each {|num| print num, ', '}
puts ' '

puts '*' *20
## Find Max ##
y = [2,8,3,-4,-1,0]

p y.max.to_s
p y.min.to_s

puts '*' *20
## Get Average ##
s = [2,10,3]
sum = 0
len = s.length.to_i
for i in s
	sum += i
end
avg = sum / len
p avg

puts '*' *20
## Array with Odd Numbers ##
y = []
(1..255).each { |i| y << i if i.odd? }
p y 

puts '*' *20
## Greater Than Y ##
def greater(arr, y)
	arr.count { |i| i > y }
end
p greater([1,3,5,7], 3)

puts '*' *20
## Square the values ##
q = [1,5,10,-4]
q.map! { |i| i*i }
p q

puts '*' *20
## Eliminate Negative Numbers ##
t = [1,5,10,-2]
t.each_index { |i| t[i] = 0 if t[i] < 0 }
p t

puts '*' *20
## Max, Min, and Average ##
r =[1,5,10,-2]
sum = 0
len = r.length.to_i
for i in r
	sum += i
end
avg = sum / len
puts 'max = ' +r.max.to_s+ ', min = ' +r.min.to_s+ ', average = ' +avg.to_s

puts '*' *20
## Shifting the Values in the Array ##
a = [1, 5, 10, 7, -2]
a.shift
a.push(0)
p a

puts '*' *20
## Number to String ##
t = [1,5,10,-2]
t.each_index { |i| t[i] = 'dojo' if t[i] < 0 }
p t

# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].



