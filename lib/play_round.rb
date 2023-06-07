require 'player_hand'
require 'hard_trainer'

class PlayRound
  def call(dealer_card:, player_first_card:, player_second_card:)
    player_hand = PlayerHand.new(first_card: player_first_card, second_card: player_second_card)

    trainer = HardTrainer.new(dealer_card:)
    trainer.call(player_total: player_hand.value)
  end
end