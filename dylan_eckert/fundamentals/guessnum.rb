def guess_number guess
    number = 25
    if guess == number
      puts "You got it!"
    elsif guess < number
      puts "#{guess} was too low!"
    else
      puts "#{guess} was too high!"
    end
end

guess_number 12
guess_number 50
guess_number 25
