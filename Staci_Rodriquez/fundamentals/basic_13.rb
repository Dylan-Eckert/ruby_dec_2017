##Print 1-255
(1..255).each { |i| puts i }

##Print odd numbers between 1-255
p (1..255).find_all { |i| i % 2 == 1 }

## Print Sum
sum = 0
for i in 0..255
	puts "New number: #{i} Sum: #{sum += i}"
end

## Iterating through an array
x = [1,3,5,7,9,13]
x.each {|num| print num, ', '}
puts ' '

##Find Max
x = [2,8,3,-4,-1,0]
p x.max.to_s

##Get Average
arr = [2,10,3]
sum = 0
len = arr.length.to_i
for i in arr
	sum += i
end
avg = sum / len
p avg

##Array with Odd Numbers
x = []
(1..255).each { |i| x << i if i.odd? }
p x

## Greater Than Y ##
def greater(arr, y)
	arr.count { |i| i > y }
end
p greater([1,3,5,7], 3)

## Square the values ##
x = [1,5,10,-4]
x.map! { |i| i*i }
p x

## Eliminate Negative Numbers ##
x = [1,5,10,-2]
x.each_index { |i| x[i] = 0 if x[i] < 0 }
p x

## Max, Min, and Average ##
x =[1,5,10,-2]
sum = 0
len = x.length.to_i
for i in x
	sum += i
end
avg = sum / len
puts 'max = ' + x.max.to_s+ ', min = ' + x.min.to_s+ ', average = ' + avg.to_s

## Shifting the Values in the Array ##
x = [1, 5, 10, 7, -2]
x.shift
x.push(0)
p x

## Number to String ##
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2]
x = [1,5,10,-2]
x.each_index { |i| x[i] = 'dojo' if x[i] < 0 }
p x
