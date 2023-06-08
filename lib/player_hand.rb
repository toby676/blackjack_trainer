class PlayerHand
  attr_reader :cards

  def initialize(cards: [])
    @cards = cards
  end

  def value
    return 2 if cards == ['A', 'A']

    value = cards.inject(0) {|sum, card| sum += convert_card_to_value(card)}
    return value unless cards.include?('A') && value > 21

    ace_count = cards.count('A')

    until value <= 21 || ace_count == 0
      value -= 10
      ace_count -= 1
    end

    value
  end

  def type
    return :bust if value > 21
    return :split if hand_split?
    return :soft if cards.any?{ card_is_ace?(_1) } && soft_hand(cards)

    :hard
  end

  private

  def soft_hand(cards)
    change_ace_to_one(cards).inject(0) {|sum, card| sum += convert_card_to_value(card)} < 12
  end

  def change_ace_to_one(cards)
    cards.map{|card| card == 'A' ? 1 : card}
  end

  def convert_card_to_value(card)
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
    cards[0] == cards[1] && cards.length == 2
  end
end