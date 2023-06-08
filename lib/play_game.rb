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

      current_move = resolve_move(dealer_card:, player_cards:)

      puts "Dealer has: #{dealer_card}"
      puts "You have: #{player_cards}"
      puts "What do you do?"

      while current_move != :bust
        try = gets.chomp
        if try == current_move.to_s && current_move == :stand
          puts "Correct! - You have picked stand and the round is over!"
          puts "========="
          break
        elsif try == current_move.to_s && current_move == :split
          puts "Correct! - You have picked split and the round is over!"
          puts "========="
          break
        elsif try == current_move.to_s && current_move == :double
          puts "Correct! - You have picked double and the round is over!"
          puts "========="
          break
        elsif try == current_move.to_s && current_move == :hit
          puts "Correct! - You have hit and the next card is drawn!"
          player_cards << RandomCardGenerator.call
          current_move = resolve_move(dealer_card:, player_cards:)
          puts "Dealer has: #{dealer_card}"
          puts "You have: #{player_cards}"
          if current_move == :bust
            puts "Oh No! You're bust!"
            puts "========="
          else
            puts "What do you do?"
          end
          next
        else
          puts "Try again."
        end
      end
    end
  end

  def resolve_move(dealer_card:, player_cards:)
    ResolveMove.new.call(dealer_card:, player_cards: player_cards)
  end
end

PlayGame.new.call