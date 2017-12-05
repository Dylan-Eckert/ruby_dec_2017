puts "----- puzzle 1"
sum = 0
puts "sum"
[3,5,1,2,7,9,8,13,25,32].each { |i| sum += i}
p sum
puts "greater than 10"
p [3,5,1,2,7,9,8,13,25,32].select { |i| i if i>10 }

puts "----- puzzle 2"
puts "suffle"
p ["John","KB","Oliver","Corey","Matthew","Christopher"].shuffle
puts "longer than 5"
p ["John","KB","Oliver","Corey","Matthew","Christopher"].select { |i| i if i.length>5 }
puts "----- puzzle 3"
alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
vowels = ["a","e","i","o","u"]
puts "suffle show last and first if vowel show message"
alphabet.shuffle!
p "last"
p alphabet.last
first = alphabet.first
p "first"
if vowels.detect { |i| i == first }
  puts first
  puts "VOWEL"
else
  puts first
end

puts "----- puzzle 4"
randarr = []
10.times{randarr.push(rand(55..100))}
p randarr

puts "----- puzzle 5"
randarr2 = []
10.times{randarr2.push(rand(55..100))}
p "sorted"
p randarr2.sort
p "max"
p randarr2.max
p "min"
p randarr2.min

puts "----- puzzle 6"
randstr = ""
5.times{randstr.concat((65+rand(26)).chr)}
p randstr

puts "----- puzzle 7"
randarr3 = []
10.times do
  randstr2 = ""
  5.times{randstr2.concat((65+rand(26)).chr)}
  randarr3.push(randstr2)
end
p randarr3
