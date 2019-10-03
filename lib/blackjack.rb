require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 sum = deal_card + deal_card
display_card_total(sum)
 return sum
end

def hit?(num)
  input = ["h", "s"]
  user_prompt = prompt_user
  user_input = get_user_input
  binding.pry
  until input.include?(user_input) 
    invalid_command
    prompt_user
    user_input = get_user_input
     #invalid_command
   end 
   
  if user_input == "h"
    deal_card 
    num += deal_card
  end 
  num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # Welcome
  #deal_card
  #prompt_user
  
end
    
