class BaseTrainer
  def initialize(dealer_card:)
    @dealer_card = dealer_card
  end

  def call(player_total:)
    move_hash = matrix.detect{_1[:dealer].include?(dealer_card)}
    return :dealer_unknown unless move_hash

    play_to_use = move_hash.select{|k,v| k != :dealer && v.include?(player_total)}.keys.first
    return :player_unknown unless play_to_use

    play_to_use
  end

  private

  attr_reader :dealer_card

  def matrix
    raise NotImplementedError
  end
end