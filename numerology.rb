# Numerology App

# Practicing defining methods first in script 
def path_number(birthdate)
# Access birthdate numbers with array, so must be integers; add all together
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
  
# Convert number back to string to use array to again access each number 
    number = number.to_s
# Convert back to integers and use array to get each number
    number = number[0].to_i + number[1].to_i

# If number is greater than 9, must be reduced again 
    if number > 9
        number = number[0].to_i + number[1].to_i
    end
    
    return number
end

# Use case statement to display each birthpath message depending on number
def statement(path_number)
case path_number
    when 1 
    message = "Your numerology number is #{path_number}.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
    when 2 
    message = "Your numerology number is #{path_number}.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3 
    message = "Your numerology number is #{path_number}.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4 
    message = "Your numerology number is #{path_number}.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5 
    message = "Your numerology number is #{path_number}.\nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6 
    message = "Your numerology number is #{path_number}.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7 
    message = "Your numerology number is #{path_number}.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8 
    message = "Your numerology number is #{path_number}.\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9 
    message = "Your numerology number is #{path_number}.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else 
    message = "Uh oh! Your birth path number is not 1-9!"
    end
end

# Asks user for their birthdate
puts "What is your birthdate? Must be in format: MMDDYYYY"
# Assign number to variable with gets 
birthdate = gets

# Assigns birth path number to a variable 
birth_path_number = path_number(birthdate)

# Assigns the correct message to a variable
message = statement(birth_path_number)

# Display # & message 
puts message