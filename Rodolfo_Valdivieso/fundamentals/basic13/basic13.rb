#Assignment 4 Basic 13.
#Print 1-255
1.upto(255) { |i| print i, " " } # => 5 6 7 8 9 10


#Print odd numbers between 1-255
#Version 1
def test(number)
	if !(number.even?)
		print number, " "
	end
end
1.upto(255) { |i| test(i) }
#Version 2
1.upto(255) { |i| if !(i.even?) then print i , " " end }
#Version 3
#1.upto(255) { |i| !(i.even?) ? (print "true") : (print "false")  }
1.upto(255) { |i| !(i.even?) ? (print i.to_s + " ") : () }


# Print sum
# 1.upto(255) { |i| puts "New number: " + i.to_s + " Sum: " + (1.upto(i) { |z| puts i +  }) }
count = 0
for i in 1..255
	count = count + i
	puts "New number i: " + i.to_s + " Sum: " + count.to_s
end

#1.upto(255) { |i| puts "New number: " + i.to_s + " Sum: " + (1.upto(i) { |z| puts count=count+z  }) }

#Iterating through an array
array = [-1,-3,-5,-7,-9,-13]
array.each { |x| puts "Value: " + x.to_s }

#Find Max
max = array[0]
for i in array
	if i > max
		max = i
	end
end
puts "Max Value: " + max.to_s

# Get Average
b = [2, 10, 3]
count = 0
for i in b
	count = count + i
end
puts "Average: " + (count/b.length).to_s


#Array with Odd Numbers
odd = []
1.upto(255) { |i| if !(i.even?) then odd.push(i) end }
puts "Arrya of Odds"
p odd


#Greater Than Y
def greaterThan(arr, y)
	temp = []
	for i in arr
		if i > y
			temp.push(i)
		end
	end
	return temp
end
b = [1, 8, 9, 2, 0, -10, 1000]
p greaterThan(b, 5)

#Square the values
def square(arr)
	for i in 0...arr.length
		arr[i] = arr[i]*arr[i]
	end
	return arr
end
p square(b)

#Eliminate Negative Numbers
def negatives(arr)
	for i in 0...arr.length
		if arr[i] < 0 
			arr[i] = 0
		end
	end
	return arr
end
p negatives([1, 8, 9, 2, 0, -10, 1000])


#Max min an avg
def maxMin(arr)
	max = arr[0]
	min = arr[0]
	avg = 0

	for i in arr
		if i > max
			max = i
		end
		if i < min
			min = i
		end
		avg = avg + i
	end
	avg = avg / arr.length
	return {"Max":max, "Min":min, "Average":avg}
end

p maxMin([1, 8, 9, 2, 0, -10, 1000])

#Shifting the values
def shifting(arr)
	for i in 0...arr.length
		if i<(arr.length-1)
			arr[i]=arr[i+1]
		else
			arr[i]=0
		end
	end
	return arr
end
p shifting([1, 8, 9, 2, 0, -10, 1000])

#Number to String
x = [-1, -3, 2]

def number(arr)
	for i in 0...arr.length
		if arr[i] < 0
			arr[i] = "Dojo"
		end
	end
	return arr
end

p number(x)