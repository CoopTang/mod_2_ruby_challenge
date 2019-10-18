require './lib/round'
require './lib/secret'

def welcome_message
  "Welcome to MASTERMIND\n\n"
  + "Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n"
  + ">"
end

def initialize_message
  "I have generated a beginner sequence with four elements made up of:" 
  + "(r)ed, (g)reen, (b)lue, and (y)ellow." 
  + "Use (q)uit at any time to end the game.\n"
  + "What's your guess?\n"
  + ">"
end

def instructions

end

def play
  secret = Secret.new
  rounds = []
  print initialize_message

  while !rounds.last.correct?

    response = gets.chomp.upcase
    loop do
      if response == 'Q'
        puts 'Good-bye!'
        return true
      elsif response.length < 4
        puts 'Input too short'
      elsif response.length > 4
        puts 'Input too long'
      end
    end

    rounds.push(Round.new(response, secret.code))
    
  end
end

def run
  puts welcome_message
  response = gets.chomp.upcase
  
  case response
  when 'Q'
    puts 'Good-bye!'
    return true
  when 'P'
    play
  when 'I'
    puts instructions
  else
    puts 'invalid input'
  end
end



