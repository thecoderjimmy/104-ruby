require 'rubygems'
require 'twilio-ruby'

account_sid = ""
auth_token = ""

@client = Twilio::REST::Client.new(account_sid, auth_token)

# Array of answers
answer = ['It is certain.', 'It is decidedly so.', 'Without a doubt.', 'Yes - definitely.', 'You may rely on it.', 'As I see it, yes.', 'Most likely.', 'Outlook good.', 'Yes.', 'Signs point to yes.', 'Reply hazy, try again.', 'Ask again later.', 'Better not tell you now.', 'Cannot predict now.', 'Concentrate and ask again.', "Don't count on it.", 'My reply is no.', 'My sources say no.', 'Outlook not so good.', 'Very doubtful.']

# Gets question
puts "What is your yes-or-no question?"
question = gets
puts "Your question was: " + question

# Sends answer
message = @client.api.account.messages.create(
  :from => "",
  :to => "",
  :body => answer.sample # The array needed to be defined first!
)

# Message confirmation
puts "Sent the answer to: " + message.to