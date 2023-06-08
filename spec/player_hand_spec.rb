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

    it 'handles A, 10 as 21' do
      expect(player_hand.new(cards: ['A', 10]).value).to eq(21)
    end

    it 'handles A, 5, 8 as 14' do
      expect(player_hand.new(cards: ['A', 5, 8]).value).to eq(14)
    end

    it 'handles 4, 9, A as 14' do
      expect(player_hand.new(cards: [4, 9, 'A']).value).to eq(14)
    end

    it 'handles 4, 9, A as 15' do
      expect(player_hand.new(cards: [4, 9, 'A', 'A']).value).to eq(15)
    end

    it 'handles A, A, A as 13' do
      expect(player_hand.new(cards: ['A', 'A', 'A']).value).to eq(13)
    end

    it 'handles A, A, A, A as 14' do
      expect(player_hand.new(cards: ['A', 'A', 'A', 'A']).value).to eq(14)
    end

    it 'handles A, 2, A, A as 16' do
      expect(player_hand.new(cards: ['A', 2, 'A', 'A', 'A']).value).to eq(16)
    end

    it 'handles A, 2, A, A, 10 as 15' do
      expect(player_hand.new(cards: ['A', 2, 'A', 'A', 10]).value).to eq(15)
    end

    it 'handles A, 2, A, 8, 10 as 22' do
      expect(player_hand.new(cards: ['A', 2, 'A', 8, 10]).value).to eq(22)
    end

    it 'handles A, A, 8 as 20' do
      expect(player_hand.new(cards: ['A', 'A', 8]).value).to eq(20)
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

    it 'handles A, 10 as soft' do
      expect(player_hand.new(cards: ['A', 10]).type).to eq(:soft)
    end

    it 'handles A, 5, 8 as hard' do
      expect(player_hand.new(cards: ['A', 5, 8]).type).to eq(:hard)
    end

    it 'handles 4, 9, A as hard' do
      expect(player_hand.new(cards: [4, 9, 'A']).type).to eq(:hard)
    end

    it 'handles 4, 9, A as hard' do
      expect(player_hand.new(cards: [4, 9, 'A', 'A']).type).to eq(:hard)
    end

    it 'handles A, A, A as soft' do
      expect(player_hand.new(cards: ['A', 'A', 'A']).type).to eq(:soft)
    end

    it 'handles A, A, A, A as soft' do
      expect(player_hand.new(cards: ['A', 'A', 'A', 'A']).type).to eq(:soft)
    end

    it 'handles A, 2, A, A as soft' do
      expect(player_hand.new(cards: ['A', 2, 'A', 'A', 'A']).type).to eq(:soft)
    end

    it 'handles A, 2, A, A, 10 as hard' do
      expect(player_hand.new(cards: ['A', 2, 'A', 'A', 10]).type).to eq(:hard)
    end

    it 'handles A, 2, A, 8, 10 as hard' do
      expect(player_hand.new(cards: ['A', 2, 'A', 8, 10]).type).to eq(:hard)
    end

    it 'handles A, A, 8 as soft' do
      expect(player_hand.new(cards: ['A', 'A', 8]).type).to eq(:soft)
    end
  end
end