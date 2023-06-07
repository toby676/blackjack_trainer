require 'split_trainer'

RSpec.describe SplitTrainer do
  subject(:split_trainer) { described_class.new(dealer_card:) }

  context 'dealer has 2' do
    let(:dealer_card) { 2 }

    player_hit_hands = [4,6,8,12]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end

    player_split_hands = [14,16,18,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 3' do
    let(:dealer_card) { 3 }

    player_hit_hands = [4,6,8]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end


    player_split_hands = [12,14,16,18,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 4' do
    let(:dealer_card) { 4 }

    player_hit_hands = [8]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end


    player_split_hands = [4,6,12,14,16,18,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 5' do
    let(:dealer_card) { 5 }

    player_hit_hands = [8]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end


    player_split_hands = [4,6,12,14,16,18,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 6' do
    let(:dealer_card) { 6 }

    player_hit_hands = [8]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end


    player_split_hands = [4,6,12,14,16,18,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 7' do
    let(:dealer_card) { 7 }

    player_hit_hands = [8,12]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end


    player_split_hands = [4,6,14,16,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [18,20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 8' do
    let(:dealer_card) { 8 }

    player_hit_hands = [4,6,8,12,14]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end


    player_split_hands = [16,18,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 9' do
    let(:dealer_card) { 9 }

    player_hit_hands = [4,6,8,12,14]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_double_hands = [10]
    player_double_hands.each do |hand|
      it "returns double if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:double)
      end
    end


    player_split_hands = [16,18,2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has 10' do
    let(:dealer_card) { 10 }

    player_hit_hands = [4,6,8,10,12,14,16]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_split_hands = [2]
    player_split_hands.each do |hand|
      it "returns split if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:split)
      end
    end

    player_stand_hands = [18,20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'dealer has A' do
    let(:dealer_card) { 'A' }

    player_hit_hands = [2,4,6,8,10,12,14,16]
    player_hit_hands.each do |hand|
      it "returns hit if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:hit)
      end
    end

    player_stand_hands = [18,20]
    player_stand_hands.each do |hand|
      it "returns stand if player has #{hand}" do
        expect(split_trainer.call(player_total: hand)).to eq(:stand)
      end
    end
  end

  context 'unknown dealer card' do
    let(:dealer_card) { 99 }

    it "returns dealer_unknown if outside of dealer hands" do
      expect(split_trainer.call(player_total: 11)).to eq(:dealer_unknown)
    end
  end

  context 'unknown player card' do
    let(:dealer_card) { 5 }

    it "returns player_unknown if outside of player hands" do
      expect(split_trainer.call(player_total: 99)).to eq(:player_unknown)
    end
  end
end