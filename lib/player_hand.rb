class PlayerHand
  attr_reader :first_card, :second_card

  def initialize(first_card:, second_card:)
    @first_card = first_card
    @second_card = second_card
  end

  def value
    convert_card_to_value(first_card) + convert_card_to_value(second_card)
  end

  def type
    return :split if hand_split?
    return :soft if card_is_ace?(first_card) || card_is_ace?(second_card)

    :hard
  end

  def convert_card_to_value(card)
    return 1 if card_is_ace?(card) && hand_split?
    return 11 if card_is_ace?(card)
    return 10 if face_card?(card)

    card
  end

  def card_is_ace?(card)
    card == 'A'
  end

  def face_card?(card)
    ['J', 'Q', 'K'].include?(card)
  end

  def hand_split?
    first_card == second_card
  end
end