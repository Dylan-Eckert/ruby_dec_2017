# 1
# (1..255).each {|i| puts i}

# 2
# (1..255).each {|i| puts i if i.odd?}

# 3
# sum = 0
# (0..255).each {|i| puts "New number: #{i} Sum: #{sum+=i}"}

# 4
# [1,3,5,7,9,13].each {|i| puts i}

# 5
# puts [-3, -5, -7].max

# # 6
# x = [1,2,4,3]
# puts x.reduce(:+) / x.length.to_f

# 7
# y = []
# (1..255).each {|i| y.push(i) if i.odd?}
# puts y

# 8
# y = 1
# arr = [4,3,2,6]
# puts arr.count {|i| y < i }

# 9
# arr = [1, 5, 10, -2] 
# arr.map! {|i| puts i*i}

#10
# arr = [1, 5, 10, -2]
# puts arr.each_index { |index| arr[index] = 0 if arr[index] < 0 }

# 11
# arr = [1, 5, 10, -2]
# puts arr.max, arr.min, arr.reduce(:+) / arr.length.to_f 

# 12
# arr = [1, 5, 10, 7, -2]
# puts arr.rotate!(1)

#13
# arr = [-1, -3, 2]
# puts arr.each_index { |i| arr[i] = "Dojo" if arr[i] < 0 }