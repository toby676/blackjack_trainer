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
  end

  describe '.type' do
    it 'returns the type of hand' do
      expect(player_hand.new(first_card: 2, second_card: 3).type).to eq(:hard)
    end
  end
end