require 'hard_trainer'

RSpec.describe HardTrainer do
  context 'dealer has 2' do
    subject(:dealer) { HardTrainer.new(dealer: 2) }

    player_hands = (4..8).to_a + [9,12]

    player_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(dealer.call(player: hand)).to eq(:hit)
      end
    end
  end
end