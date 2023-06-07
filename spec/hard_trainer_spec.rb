require 'hard_trainer'

RSpec.describe HardTrainer do
  subject(:hard_trainer) { described_class.new(dealer_card:) }

  context 'dealer has 2' do
    let(:dealer_card) { 2 }

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

    player_stand_hands = (13..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 3' do
    let(:dealer_card) { 3 }

    player_hit_hands = (4..8).to_a + [12]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (9..11)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (13..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 4' do
    let(:dealer_card) { 4 }

    player_hit_hands = (4..8)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (9..11)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (12..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 5' do
    let(:dealer_card) { 5 }

    player_hit_hands = (4..8)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (9..11)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (12..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 6' do
    let(:dealer_card) { 6 }

    player_hit_hands = (4..8)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (9..11)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (12..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 7' do
    let(:dealer_card) { 7 }

    player_hit_hands = (4..9).to_a + (12..16).to_a
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (10..11)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (17..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 8' do
    let(:dealer_card) { 8 }

    player_hit_hands = (4..9).to_a + (12..16).to_a
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (10..11)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (17..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 9' do
    let(:dealer_card) { 9 }

    player_hit_hands = (4..9).to_a + (12..16).to_a
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (10..11)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (17..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 10' do
    let(:dealer_card) { 10 }

    player_hit_hands = (4..10).to_a + (12..16).to_a
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [11]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (17..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has A' do
    let(:dealer_card) { 'A' }

    player_hit_hands = (4..10).to_a + (12..16).to_a
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [11]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_stand_hands = (17..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(hard_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end
end