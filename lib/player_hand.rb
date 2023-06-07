class PlayerHand
  attr_reader :cards

  def initialize(cards: [])
    @cards = cards
  end

  def value
    cards.inject(0) {|sum, card| sum += convert_card_to_value(card)}
  end

  def type
    return :split if hand_split?
    return :soft if cards.any?{ card_is_ace?(_1) }

    :hard
  end

  private

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
    cards[0] == cards[1]
  end
end