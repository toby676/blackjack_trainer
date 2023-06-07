require_relative 'random_card_generator'
require_relative 'resolve_move'

puts "Welcome to the black jack trainer!"
puts "Please enter one of 'stand', 'hit', 'double', 'split' depending on the game situation"
puts "You can keep trying until you are correct"
puts "Type exit at any point to leave"

dealer_card = RandomCardGenerator.call
player_first_card = RandomCardGenerator.call
player_second_card = RandomCardGenerator.call

correct_move = ResolveMove.new.call(dealer_card:, player_cards: [player_first_card, player_second_card]).to_s

puts "Dealer has: #{dealer_card}"
puts "You have: #{player_first_card}, #{player_second_card}"
puts "What do you do?"

try = gets.chomp

while try != correct_move
  puts "Try again."
  try = gets.chomp
  if try == 'exit'
    puts "Okay bye!"
    break
  end
  if try == correct_move
    puts "You win!"
    break
  end
end