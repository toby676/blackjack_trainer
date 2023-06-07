require 'resolve_move'

RSpec.describe ResolveMove do
  subject(:resolve_move) { described_class }
  describe '#call' do
    it 'returns hit when dealer card is 2, player first card is 2 and player second card is 3' do
      result = resolve_move.new.call(
        dealer_card: 2,
        player_first_card: 2,
        player_second_card: 3
      )

      expect(result).to eq(:hit)
    end

    it 'returns stand when dealer card is 5, player first card is K and player second card is 3' do
      result = resolve_move.new.call(
        dealer_card: 5,
        player_first_card: 'K',
        player_second_card: 3
      )

      expect(result).to eq(:stand)
    end

    it 'returns double when dealer card is K, player first card is 8 and player second card is 3' do
      result = resolve_move.new.call(
        dealer_card: 'K',
        player_first_card: 8,
        player_second_card: 3
      )

      expect(result).to eq(:double)
    end

    it 'returns double when dealer card is 5, player first card is A and player second card is 3' do
      result = resolve_move.new.call(
        dealer_card: 5,
        player_first_card: 'A',
        player_second_card: 3
      )

      expect(result).to eq(:double)
    end

    it 'returns split when dealer card is 3, player first card is A and player second card is A' do
      result = resolve_move.new.call(
        dealer_card: 3,
        player_first_card: 'A',
        player_second_card: 'A'
      )

      expect(result).to eq(:split)
    end
  end
end