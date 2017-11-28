def guess_number guess
    number = 25
    if guess == number
        puts "You got it!"
    elsif guess < number
        puts "Guess was too low!"
    else
        puts "Guess was too high!"
    end
end

guess_number 25