# 1
# arr = [3,5,1,2,7,9,8,13,25,32]
# arr2 = []
# p arr.inject(0, :+)
# arr.each_index {|i| arr2.push(arr[i]) if arr[i] > 10}
# p arr2

# 2
# arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# p arr.shuffle
# arr.each_index {|i| puts arr[i] if arr[i].length > 5}

# 3
# arr = ("a".."z").to_a
# b = arr.shuffle.last, arr.shuffle.first
# p  b
# p "The first letter in the shuffled array is a vowel!" if ["a","e","i","o","u"].include? b.first

# 4
# arr = []
# 10.times { arr << rand(55..100) }
# p arr.sort
# p arr.min
# p arr.max

# 5
# str = ""
# 5.times { str << (65+rand(26)).chr}
# puts str

# 6
# arr = []
# 10.times do 
#   str = ""
#   5.times { str << (65+rand(26)).chr }
#   arr << str
# end
# puts arr
