##          OBJECTIVE: Use Twilio to create a Magic 8-ball script 

## Magic 8-ball script to accept a question & text a randomly selected answer
## Defining method for generate random fortunes 

def fortune
  rando_fortune = 1 + rand(20) ##Generate random number from 1-20

case rando_fortune ##Assign fortunes to case statement numbers
  when 1
  answer = "It is certain"
  when 2
  answer = "It is decidedly so"
  when 3 
  answer = "Without a doubt"
  when 4
  answer = "Yes definitely"
  when 5
  answer = "You may rely on it"
  when 6 
  answer = "As I see it, yes"
  when 7 
  answer = "Most likely"
  when 8 
  answer = "Outlook good"
  when 9 
  answer = "Yes"
  when 10 
  answer = "Signs point to yes"
  when 11
  answer = "Reply hazy try again"
  when 12
  answer = "Ask again later"
  when 13
  answer = "Better not tell you now"
  when 14 
  answer = "Cannot predict now"
  when 15 
  answer = "Concentrate and ask again"
  when 16 
  answer = "Don't count on it"
  when 17 
  answer = "My reply is no"
  when 18 
  answer = "My sources say no"
  when 19 
  answer = "Outlook not so good"
  when 20
  answer = "Very doubtful"
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