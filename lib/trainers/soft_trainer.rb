require_relative 'base_trainer'

class SoftTrainer < BaseTrainer
  private

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
        dealer: [9,10,'J','Q','K','A'], hit: (13..18), double: [], double_or_stand: [], stand: (19..21)
      }
    ]
  end
end