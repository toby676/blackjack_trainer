require 'hard_trainer'

RSpec.describe HardTrainer do
  context 'dealer has 2' do
    subject(:dealer) { HardTrainer.new(dealer: 2) }

    it 'returns hit if player has 4' do
      expect(dealer.call(player:4)).to eq(:hit)
    end
  end
end