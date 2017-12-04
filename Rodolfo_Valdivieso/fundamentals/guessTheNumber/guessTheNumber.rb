#Assignment 1 Guess the Number

def guess_number guess
	number = 25
	if guess == number
		puts "You got it!"
	elsif guess > number
		puts "Guess was too high!"
	else
		puts "Guess was too low!"
	end
end

#Version 2 Using unless
def guess_number2 guess
	number = 25
	unless guess == number
		unless guess > number
			puts "Guess was too low!"
		else
			puts "Guess was too high!"
		end
	else 
		puts "You got it!"
	end
end

guess_number2(10)
guess_number2(30)
guess_number2(25)