##          OBJECTIVE: Use Twilio to create a Magic 8-ball script 

## Magic 8-ball script to accept a question & text a randomly selected answer
## Defining method for generate random fortunes 

def fortune
  rando_fortune = 1 + rand(20) ##Generate random number from 1-20

case rando_fortune ##Assign fortunes to case statement numbers
  when 1
  puts answer = "It is certain"
  when 2
  puts answer = "It is decidedly so"
  when 3 
  puts answer = "Without a doubt"
  when 4
  puts answer = "Yes definitely"
  when 5
  puts answer = "You may rely on it"
  when 6 
  puts answer = "As I see it, yes"
  when 7 
  puts answer = "Most likely"
  when 8 
  puts answer = "Outlook good"
  when 9 
  puts answer = "Yes"
  when 10 
  puts answer = "Signs point to yes"
  when 11
  puts answer = "Reply hazy try again"
  when 12
  puts answer = "Ask again later"
  when 13
  puts answer = "Better not tell you now"
  when 14 
  puts answer = "Cannot predict now"
  when 15 
  puts answer = "Concentrate and ask again"
  when 16 
  puts answer = "Don't count on it"
  when 17 
  puts answer = "My reply is no"
  when 18 
  puts answer = "My sources say no"
  when 19 
  puts answer = "Outlook not so good"
  when 20
  puts answer = "Very doubtful"
end
  
end

## Display 8-ball answer
#puts fortune

## Require needed gems
require 'rubygems'
require 'twilio-ruby'

## Connect to the Twilio API using account SID/auth token
account_sid = 
auth_token = 

@client = Twilio::REST::Client.new(account_sid, auth_token)

## Use create/to methods to create text & send it
message = @client.account.messages.create(
  :from => '', #Twilio number
  :to => '', #Receiving number 
  :body => "Your Magic 8-ball fortune is: #{fortune}" #Body of text message 
)

puts message.to