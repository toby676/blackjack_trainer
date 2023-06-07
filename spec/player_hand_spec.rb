require 'player_hand'

RSpec.describe PlayerHand do
  subject(:player_hand) {described_class}
  describe '.first_card' do
    it 'returns the first card' do
      expect(player_hand.new(first_card: 2, second_card: 3).first_card).to eq(2)
    end
  end

  describe '.second_card' do
    it 'returns the second card' do
      expect(player_hand.new(first_card: 2, second_card: 3).second_card).to eq(3)
    end
  end

  describe '.value' do
    it 'returns the value of the hand' do
      expect(player_hand.new(first_card: 2, second_card: 3).value).to eq(5)
    end

    it 'returns the value of the hand if split' do
      expect(player_hand.new(first_card: 3, second_card: 3).value).to eq(6)
    end

    it 'returns the value of the hand using ace as 11 if soft' do
      expect(player_hand.new(first_card: 'A', second_card: 3).value).to eq(14)
    end

    it 'returns the value of the hand using ace as 11' do
      expect(player_hand.new(first_card: 'A', second_card: 3).value).to eq(14)
    end

    it 'returns the value of the hand as 2 if two aces' do
      expect(player_hand.new(first_card: 'A', second_card: 'A').value).to eq(2)
    end
  end

  describe '.type' do
    it 'returns the type of hand' do
      expect(player_hand.new(first_card: 2, second_card: 3).type).to eq(:hard)
    end

    it 'returns the type of hand as soft if ace included' do
      expect(player_hand.new(first_card: 'A', second_card: 3).type).to eq(:soft)
    end

    it 'returns the type of hand as split if the same cards included' do
      expect(player_hand.new(first_card: 3, second_card: 3).type).to eq(:split)
    end

    it 'returns the type of hand as split if the same cards included' do
      expect(player_hand.new(first_card: 'A', second_card: 'A').type).to eq(:split)
    end
  end
end