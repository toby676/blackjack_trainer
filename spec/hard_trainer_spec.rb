require 'hard_trainer'

RSpec.describe HardTrainer do
  context 'dealer has 2' do
    subject(:hard_trainer) { HardTrainer.new(dealer_card: 2) }

    player_hit_hands = (4..8).to_a + [9,12]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10,11]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (13..20)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 3' do
    subject(:hard_trainer) { HardTrainer.new(dealer_card: 3) }

    player_hit_hands = (4..8).to_a + [12]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [9,10,11]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (13..20)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end
end