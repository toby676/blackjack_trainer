class SoftTrainer
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
    [
      {
        dealer: [2], hit: (13..17), double: [], double_or_stand: [18], stand: (19..21)
      },
      {
        dealer: [3], hit: (13..16), double: [17], double_or_stand: [18], stand: (19..21)
      },
      {
        dealer: [4], hit: (13..14), double: (15..17), double_or_stand: [18], stand: (19..21)
      },
      {
        dealer: [5], hit: [], double: (13..17), double_or_stand: [18], stand: (19..21)
      },
      {
        dealer: [6], hit: [], double: (13..17), double_or_stand: (18..19), stand: (20..21)
      },
      {
        dealer: [7,8], hit: (13..17), double: [], double_or_stand: [], stand: (18..21)
      },
      {
        dealer: [9,10,'A'], hit: (13..18), double: [], double_or_stand: [], stand: (19..21)
      }
    ]
  end
end