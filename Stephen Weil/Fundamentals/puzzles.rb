# take array, print sum of numbers and return array with all numbers > 10

arr1 = [3,5,1,2,7,9,8,13,25,32]

def first_puzzle arr
    sum = 0
    arr.each {|x| sum += x}
    p sum
    return arr.find_all {|x| x > 10}
end

p first_puzzle arr1

# given array of names, shuffle them, print all names, and return array with 
# all names longer than 5 characters

arr2 = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']

def second_puzzle arr
    arr.shuffle!
    arr.each { |name| p name }
    return arr.find_all { |name| name.length > 5 }
end

p second_puzzle arr2

# create array with letters a to z - shuffle it, print last and first letter
# add an additional message if first letter is a vowel

arr3 = ("a".."z").to_a

def third_puzzle arr
    arr.shuffle!
    p "Last letter is " + arr[-1]
    p "First letter is " + arr[0]
    puts "Wow, that first letter was a VOWEL! How cool!" if ['a', 'e', 'i', 'o', 'u', 'y'].include? arr[0]
end

third_puzzle arr3

# generate array with 10 random numbers between 55-100

def fourth_puzzle
    rng = Random.new
    ret = []
    10.times { ret.push(rng.rand(55..100)) }
    return ret
end

p fourth_puzzle

# generate above array, have it be sorted, display all numbers and then min and max

def fifth_puzzle
    sample = fourth_puzzle.sort!.each { |x| p x }
    p "Min is " + sample[0].to_s
    p "Max is " + sample[-1].to_s
end

fifth_puzzle

# create a random string that is 5 characters long

def sixth_puzzle
    rng = Random.new
    ret = ''
    5.times { ret += (65+rand(26)).chr }
    return ret.capitalize
end

p sixth_puzzle

# generate an array with 10 random strings that are 5 characters long

def seventh_puzzle
    ret = []
    10.times { ret.push(sixth_puzzle) }
    return ret
end

p seventh_puzzle