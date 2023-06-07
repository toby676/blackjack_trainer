require 'player_hand'

RSpec.describe PlayerHand do
  subject(:player_hand) {described_class}
  describe '.value' do
    it 'returns the value of the hand' do
      expect(player_hand.new(cards: [2, 3]).value).to eq(5)
    end

    it 'returns the value of the hand if split' do
      expect(player_hand.new(cards: [3, 3]).value).to eq(6)
    end

    it 'returns the value of the hand using ace as 11 if soft' do
      expect(player_hand.new(cards: ['A', 3]).value).to eq(14)
    end

    it 'returns the value of the hand using ace as 11' do
      expect(player_hand.new(cards: ['A', 3]).value).to eq(14)
    end

    it 'returns the value of the hand as 2 if two aces' do
      expect(player_hand.new(cards: ['A', 'A']).value).to eq(2)
    end

    it 'handles J as 10' do
      expect(player_hand.new(cards: ['J', 2]).value).to eq(12)
    end

    it 'handles Q as 10' do
      expect(player_hand.new(cards: [2,'Q']).value).to eq(12)
    end

    it 'handles K as 10' do
      expect(player_hand.new(cards: ['K', 2]).value).to eq(12)
    end
  end

  describe '.type' do
    it 'returns the type of hand' do
      expect(player_hand.new(cards: [2, 3]).type).to eq(:hard)
    end

    it 'returns the type of hand as soft if ace included' do
      expect(player_hand.new(cards: ['A', 3]).type).to eq(:soft)
    end

    it 'returns the type of hand as split if the same cards included' do
      expect(player_hand.new(cards: [3, 3]).type).to eq(:split)
    end

    it 'returns the type of hand as split if the same cards included' do
      expect(player_hand.new(cards: ['A', 'A']).type).to eq(:split)
    end
  end
end