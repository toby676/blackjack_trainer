require 'soft_trainer'

RSpec.describe SoftTrainer do
  subject(:soft_trainer) { described_class.new(dealer_card:) }

  context 'dealer has 2' do
    let(:dealer_card) { 2 }

    player_hit_hands = (13..17)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_or_stand_hands = [18]
    player_double_or_stand_hands.each do |hand|
      it "returns double_or_stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double_or_stand)
      end
    end

    player_stand_hands = (19..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 3' do
    let(:dealer_card) { 3 }

    player_hit_hands = (13..16)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [17]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_double_or_stand_hands = [18]
    player_double_or_stand_hands.each do |hand|
      it "returns double_or_stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double_or_stand)
      end
    end

    player_stand_hands = (19..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 4' do
    let(:dealer_card) { 4 }

    player_hit_hands = (13..14)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = (15..17)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_double_or_stand_hands = [18]
    player_double_or_stand_hands.each do |hand|
      it "returns double_or_stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double_or_stand)
      end
    end

    player_stand_hands = (19..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 5' do
    let(:dealer_card) { 5 }

    player_double_hands = (13..17)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_double_or_stand_hands = [18]
    player_double_or_stand_hands.each do |hand|
      it "returns double_or_stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double_or_stand)
      end
    end

    player_stand_hands = (19..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 6' do
    let(:dealer_card) { 6 }

    player_double_hands = (13..17)
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_double_or_stand_hands = (18..19)
    player_double_or_stand_hands.each do |hand|
      it "returns double_or_stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:double_or_stand)
      end
    end

    player_stand_hands = (20..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 7' do
    let(:dealer_card) { 7 }

    player_hit_hands = (13..17)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_stand_hands = (18..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 8' do
    let(:dealer_card) { 8 }

    player_hit_hands = (13..17)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_stand_hands = (18..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 9' do
    let(:dealer_card) { 9 }

    player_hit_hands = (13..18)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_stand_hands = (19..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 10' do
    let(:dealer_card) { 10 }

    player_hit_hands = (13..18)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_stand_hands = (19..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has A' do
    let(:dealer_card) { 'A' }

    player_hit_hands = (13..18)
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_stand_hands = (19..21)
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(soft_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'unknown dealer card' do
    let(:dealer_card) { 99 }

    it "returns dealer_unknown if outside of dealer hands" do
      expect(soft_trainer.call(player_total: 11)).to eq(:dealer_unknown)
    end
  end

  context 'unknown player card' do
    let(:dealer_card) { 5 }

    it "returns player_unknown if outside of player hands" do
      expect(soft_trainer.call(player_total: 99)).to eq(:player_unknown)
    end
  end
end