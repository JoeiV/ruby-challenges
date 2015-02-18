# Infamous FizzBuzz test

number = 0
while (number <= 100)
    # If/else statements to determine what to print out
    if number%3==0 && number%5 == 0 
        puts "FizzBuzz"
    elsif number%3 == 0
        puts "Fizz"
    elsif number%5 == 0
        puts "Buzz"
    else 
        puts number
    end
    number += 1
end