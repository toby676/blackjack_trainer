require 'resolve_move'
require 'play_game'

RSpec.describe PlayGame do
  subject(:play_game) { described_class }
  describe '#call' do
    it 'returns Correct! - You have picked stand when correct move was stand and player picked stand' do
      card_generator = class_double(RandomCardGenerator)
      allow(card_generator).to receive(:call).and_return(10, 'K', 'Q')
      game_instance = play_game.new(card_generator: card_generator)
      allow(game_instance).to receive(:gets).and_return("1\n", "stand\n")

      expect{
        game_instance.call
      }.to output(/Correct! - You have picked stand and the round is over!/).to_stdout
    end

    it 'returns Correct! - You have picked double when correct move was double and player picked double' do
      card_generator = class_double(RandomCardGenerator)
      allow(card_generator).to receive(:call).and_return(4, 4, 5)
      game_instance = play_game.new(card_generator: card_generator)
      allow(game_instance).to receive(:gets).and_return("1\n", "double\n")

      expect{
        game_instance.call
      }.to output(/Correct! - You have picked double and the round is over!/).to_stdout
    end

    it 'returns Correct! - You have picked split when correct move was split and player picked split' do
      card_generator = class_double(RandomCardGenerator)
      allow(card_generator).to receive(:call).and_return(5, 7, 7)
      game_instance = play_game.new(card_generator: card_generator)
      allow(game_instance).to receive(:gets).and_return("1\n", "split\n")

      expect{
        game_instance.call
      }.to output(/Correct! - You have picked split and the round is over!/).to_stdout
    end

    it 'returns try again when correct move was stand and player picked hit' do
      card_generator = class_double(RandomCardGenerator)
      allow(card_generator).to receive(:call).and_return(7, 'A', 8)
      game_instance = play_game.new(card_generator: card_generator)
      allow(game_instance).to receive(:gets).and_return("1\n", "hit\n", "stand\n")

      expect{
        game_instance.call
      }.to output(/Try again./).to_stdout
    end

    it 'allows a hit when correct move was hit and player picked hit' do
      card_generator = class_double(RandomCardGenerator)
      allow(card_generator).to receive(:call).and_return(4,4,4,4)
      game_instance = play_game.new(card_generator: card_generator)
      allow(game_instance).to receive(:gets).and_return("1\n", "hit\n", "stand\n")

      expect{
        game_instance.call
      }.to output(/Correct! - You have hit and the next card is drawn/).to_stdout
    end

    it 'exits with bust when player goes bust' do
      card_generator = class_double(RandomCardGenerator)
      allow(card_generator).to receive(:call).and_return(7,6,7,10)
      game_instance = play_game.new(card_generator: card_generator)
      allow(game_instance).to receive(:gets).and_return("1\n", "hit\n")

      expect{
        game_instance.call
      }.to output(/Oh No! You're bust!/).to_stdout
    end
  end
end
