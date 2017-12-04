##Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

# x = [3,5,1,2,7,9,8,13,25,32]
# sum = 0
# for i in x
# 	sum =+ i
# end
# p sum
# p x.reject { |i| i < 10 }



#Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

# x = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
# p x.shuffle 
# p x.find_all { |i| i.length > 5 }



# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.

# y = ('a'..'z').to_a
# p y.shuffle!
# p y.last
# p y.first 
# d =['a', 'e', 'i', 'o', 'u']
# for i in d
# 	if y.first == i
# 		puts 'Oh it is vowel!'
# 	end
# end



# Generate an array with 10 random numbers between 55-100.

# rnum = Random.new
# arr = []
# for i in (0...10)
# 	arr.push(rnum.rand(55..100))
# end 
# p arr



# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value

# rnum = Random.new
# arr = []
# for i in (0...10)
# 	arr.push(rnum.rand(55..100))
# end 
# p arr.sort 
# p arr.min
# p arr.max



# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

# x = ''
# for i in (0...5)
# 	x << (65+rand(26)).chr
# end
# p x 



# Generate an array with 10 random strings that are each 5 characters long

x = []
for i in (0...10)
	y = ''
	for i in (0...5)
		y << (65+rand(26)).chr
	end
	x.push(y)
end
p x