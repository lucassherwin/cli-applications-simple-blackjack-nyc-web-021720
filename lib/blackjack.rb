def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  total = card_total
  valid = ['h', 's']
  if(!valid.include?(input))
    invalid_command
    prompt_user
    input = get_user_input
  elsif(input ==  'h')
    total += deal_card
  end
  total
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  #prompt_user
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome

  total = initial_round
  until total > 21
    #prompt_user
    #hand = hit?(total)
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
