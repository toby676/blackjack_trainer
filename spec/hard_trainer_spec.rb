require 'hard_trainer'

RSpec.describe HardTrainer do
  it 'returns hit if player has 4 and dealer has 2' do
    expect(HardTrainer.new.call(player:4, dealer: 2)).to eq(:hit)
  end
end