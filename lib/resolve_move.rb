require_relative 'player_hand'
require_relative 'trainers/hard_trainer'
require_relative 'trainers/soft_trainer'
require_relative 'trainers/split_trainer'

class ResolveMove
  def initialize(hard_trainer: HardTrainer, soft_trainer: SoftTrainer, split_trainer: SplitTrainer)
    @hard_trainer = hard_trainer
    @soft_trainer = soft_trainer
    @split_trainer = split_trainer
  end

  def call(dealer_card:, player_cards:)
    player_hand = PlayerHand.new(cards: player_cards)
    return :bust if player_hand.type == :bust

    trainer = find_trainer(player_hand_type: player_hand.type).new(dealer_card: dealer_card)
    trainer.call(player_total: player_hand.value)
  end

  private

  attr_reader :hard_trainer, :soft_trainer, :split_trainer

  def find_trainer(player_hand_type:)
    case player_hand_type
    when :soft
      soft_trainer
    when :split
      split_trainer
    else
      hard_trainer
    end
  end
end