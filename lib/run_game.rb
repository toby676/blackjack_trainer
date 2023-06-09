require_relative 'random_card_generator'
require_relative 'resolve_move'

class RunGame
  def initialize(card_generator: RandomCardGenerator, move_resolver: ResolveMove.new)
    @card_generator = card_generator
    @move_resolver = move_resolver
  end

  def call
    puts "Welcome to the black jack trainer!"
    puts "Please enter one of 'stand', 'hit', 'double', 'split', 'double_or_split' depending on the game situation"
    puts "You can keep trying until you are correct"
    puts "How many times would you like to play?"

    plays = gets.chomp.to_i

    plays.times do |i|
      puts "Turn #{i + 1}"
      dealer_card = card_generator.call
      player_first_card = card_generator.call
      player_second_card = card_generator.call

      player_cards = [player_first_card, player_second_card]

      correct_move = move_resolver.call(dealer_card:, player_cards:)

      puts "Dealer has: #{dealer_card}"
      puts "You have: #{player_cards}"
      puts "What do you do?"

      while true
        try = gets.chomp
        case correct_try(try:, correct_move:)
        in true if correct_move == :stand
          puts "Correct! - You have picked stand and the round is over!"
          puts "========="
          break
        in true if correct_move == :split
          puts "Correct! - You have picked split and the round is over!"
          puts "========="
          break
        in true if correct_move == :double
          puts "Correct! - You have picked double and the round is over!"
          puts "========="
          break
        in true if correct_move == :double_or_stand
          puts "Correct! - You have picked double_or_stand and the round is over!"
          puts "========="
          break
        in true if correct_move == :hit
          puts "Correct! - You have hit and the next card is drawn!"
          player_cards << card_generator.call
          correct_move = move_resolver.call(dealer_card:, player_cards:)
          puts "Dealer has: #{dealer_card}"
          puts "You have: #{player_cards}"
          if correct_move == :bust
            puts "Oh No! You're bust!"
            puts "========="
            break
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

  private

  attr_reader :move_resolver, :card_generator

  def correct_try(try:, correct_move:)
    try == correct_move.to_s
  end
end