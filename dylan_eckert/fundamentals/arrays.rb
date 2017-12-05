puts "array .at through .delete"
array = [1,2,3,4,5,6]
puts array
puts array.at(2)
puts array.fetch(3)
puts array.delete(4)
puts array

puts "array2 .reverse through .sort"
array2 = [3,4,8,1,5,2]
puts array2
puts array2.reverse
puts array2.length
puts array2.sort

puts "array3 .slice through .insert"
array3 = [1,2,3,4,5,6]
puts array3
puts array3.slice(0..2)
puts array3.shuffle
puts array3.insert(6, 20)

puts "array4 .join .values_at"
array4 = ["super","cali","fraga","listic","expi","ala","dotious"]
puts array4
puts array4.join
puts array4.values_at(1, 3, 5)
