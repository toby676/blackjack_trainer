class PlayerHand
  attr_reader :first_card, :second_card

  def initialize(first_card:, second_card:)
    @first_card = first_card
    @second_card = second_card
  end

  def value
    first_card + second_card
  end

  def type
    :hard
  end
end