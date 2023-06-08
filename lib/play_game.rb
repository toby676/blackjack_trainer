require_relative 'random_card_generator'
require_relative 'resolve_move'

class PlayGame
  def call
    puts "Welcome to the black jack trainer!"
    puts "Please enter one of 'stand', 'hit', 'double', 'split' depending on the game situation"
    puts "You can keep trying until you are correct"
    puts "How many times would you like to play?"

    plays = gets.chomp.to_i

    plays.times do |i|
      puts "Turn #{i + 1}"
      dealer_card = RandomCardGenerator.call
      player_first_card = RandomCardGenerator.call
      player_second_card = RandomCardGenerator.call

      player_cards = [player_first_card, player_second_card]

      current_move = ResolveMove.new.call(dealer_card:, player_cards: player_cards).to_s

      puts "Dealer has: #{dealer_card}"
      puts "You have: #{player_first_card}, #{player_second_card}"
      puts "What do you do?"

      try = ''

      while try != current_move
        try = gets.chomp
        if try == current_move
          puts "Correct!"
          puts "========="
        else
          puts "Try again."
        end
      end
    end
  end
end

PlayGame.new.call