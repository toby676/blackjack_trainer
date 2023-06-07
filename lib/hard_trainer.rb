require 'base_trainer'

class HardTrainer < BaseTrainer
  private

  def matrix
    [
      {
        dealer: [2], hit: (4..8).to_a + [9,12], double: [10,11], stand: (13..21)
      },
      {
        dealer: [3], hit: (4..8).to_a + [12], double: (9..11), stand: (13..21)
      },
      {
        dealer: [4,5,6], hit: (4..8).to_a, double: (9..11), stand: (12..21)
      },
      {
        dealer: [7,8,9], hit: (4..9).to_a + (12..16).to_a, double: (10..11), stand: (17..21)
      },
      {
        dealer: [10, 'J', 'Q', 'K','A'], hit: (4..10).to_a + (12..16).to_a, double: [11], stand: (17..21)
      }
    ]
  end
end