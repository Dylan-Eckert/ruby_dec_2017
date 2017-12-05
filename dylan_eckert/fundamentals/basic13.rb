puts "--- print 1-255"
for i in 1..255
  puts "#{i}"
end

puts "--- print ODD 1-255"
for i in 1..255
  if i.odd?
    puts "#{i}"
  end
end

puts "--- print 1-255 and sum of all existing nums"
sum = 0
for i in 0..255
  sum += i
  puts "number is #{i}"
  puts "sum is #{sum}"
end

puts "--- iterating through an array"
x = [1,3,5,7,9,13]
def iterating arr
  arr.each{|i| puts i}
end
iterating x

puts "--- find max"
y = [1,2,3,4,5]
z = [-1,0,9,-45,2]
zz = [-1,-3,-6,-7,-8]
def find_max arr
  arr.max
end

puts find_max y
puts find_max z
puts find_max zz

puts "--- average"
def get_avg arr
  arr.inject{ |sum, x| sum += x } / arr.size.to_f
end

puts get_avg y
puts get_avg z

puts "--- array ODD 1-255"
p (1..255).select { |i| i if i.odd? }
# def odd_arr
#   newarr = []
#   for i in 1..255
#     if i.odd?
#       newarr.push(i)
#     end
#   end
#   return newarr
# end

puts "--- greater than y"
gtyarr = [1, 3, 5, 7]
y = 3
puts gtyarr.count { |i| i > y }

puts "--- square numbers"
sqarr = [2,6,8,13]
puts sqarr.map! { |i| i*i}
# to create a new array use map

puts "--- eliminate negatives"
elimarr = [-24, 2, -3, 5]
puts elimarr.each_index { |i| elimarr[i] = 0 if elimarr[i] < 0 }

puts "--- min max avg"
mmaarr = [1, 5, 10, -2]
puts "max"
puts mmaarr.max
puts "min"
puts mmaarr.min
puts "avg"
puts mmaarr.inject{ |sum, x| sum += x } / mmaarr.size.to_f

puts "--- shifting values"
shiftarr = [1, 5, 10, 7, -2]
shiftarr = [1, 5, 10, 7, -2]
shiftarr.rotate!(1)[shiftarr.length-1] = 0
puts shiftarr

puts "--- num to str"

wordarr = [-1, -3, 2]
puts wordarr.each_index { |i| wordarr[i] = "Dojo" if wordarr[i] < 0 }
