# print 1-255
(1..255).each { |i| print i, " " }
print "\n"

# print odd numbers 1-255
(1..255).reject { |i| i % 2 == 0 }.each { |i| print i, " " }
print "\n"

# print sum
sum = 0
for i in 0..255
    sum += i
    puts "New number: #{i} - Sum: #{sum}"
end

# iterating through array
for el in [1,3,5,7,9,13]
    puts el
end

# find max
def find_max arr
    max = arr[0]
    for el in arr[1..-1]
        if el > max
            max = el
        end
    end
    return max
end

puts find_max [-3,-5,-7]
puts find_max [-400,0,3.5]

def find_min arr
    min = arr[0]
    for el in arr[1..-1]
        if el < min
            min = el
        end
    end
    return min
end

# get average
def find_avg arr
    sum = 0
    for el in arr
        sum += el
    end
    return sum / arr.length
end

puts find_avg [2,10,3]

# array with odd numbers

def create_odd_array
    $y = (1..255).reject { |i| i % 2 == 0 }
end

create_odd_array
print $y, "\n"

# greater than y

def greater_than_y arr, val
    return arr.count { |x| x > val }
end

p greater_than_y [1,2,3,4,5,6], 2

# square the values

def square_values arr
    arr.map! { |x| x * x }
end

to_square = [1,5,10,-2]
square_values to_square
p to_square

# eliminate negative numbers

def eliminate_negatives arr
    arr.each_with_index { |val, idx| arr[idx] = 0 unless val > 0 }
end

to_eliminate = [1,-3,0,5,-6]
eliminate_negatives to_eliminate
p to_eliminate

# min, max, avg

def give_stats arr
    return {
        max: find_max(arr),
        min: find_min(arr),
        avg: find_avg(arr)
    }
end

p give_stats [1,5,10,-2]

# shift values

def shift_left arr
    arr.delete_at(0)
    arr.push(0)
end

to_shift = [1,5,10,7,-2]
p shift_left to_shift

# number to string

def negatives_to_string arr
    arr.each_with_index { |val, idx| arr[idx] = "Dojo" if val < 0 }
end

fix_me = [-1,-3,2]
negatives_to_string fix_me
p fix_me