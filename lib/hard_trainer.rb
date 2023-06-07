class HardTrainer
  def initialize(dealer_card:)
    @dealer_card = dealer_card
  end

  def call(player_total:)
    player_hit_hands = (4..8).to_a + [9,12]
    player_double_hands = [10,11]

    return :hit if player_hit_hands.include?(player_total)
    return :double if player_double_hands.include?(player_total)
    :stand
  end

  private

  attr_reader :dealer_card
end