# Assignment Ruby Puzlles.

# 1) 

a = [3,5,1,2,7,9,8,13,25,32]

def function1(arr)
	sum = 0
	arr2 = []
	for i in arr
		sum = sum + i
		if i > 10
			arr2.push(i)
		end
	end
	return arr2
end

p function1(a)

#Version2
puts "New array containing numbers greater than 10: "
p a.reject { |i| i < 10 }
puts " Total sum of elements inside the array: " 
sum = 0
a.each { |i| sum+= i}
p sum



#Verison 3
p a.inject(0, :+)


#Excercise 2
b = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

def printer(i, newArr)
	puts i
	if i.length > 5
		newArr.push(i)
	end
	return newArr
end

newArr = []
b.shuffle.each {|i| printer(i, newArr) }
p newArr

#Excercise3

arr3 = [*('a'..'z')].shuffle
p arr3.first
p arr3.last
p "The first letter of this arr is a vowel: " + arr3.first.to_s if ["a", "e", "i", "o", "u"].include? arr3.first


#Exercise 4
p (55..100).to_a.shuffle

#Excercise 5
arr = (55..100).to_a.shuffle.sort
p arr
p arr.min
p arr.max

#Excercise 6
p (1..5).map { (65 + rand(26)).chr }.join

#Excercise 7
arr =[]
for i in 1..10
	arr.push((1..5).map { (65 + rand(26)).chr }.join)
end
p arr

