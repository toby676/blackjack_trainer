require 'base_trainer'

class SplitTrainer < BaseTrainer
  private

  def matrix
    [
      {
        dealer: [2], hit: [4,5,6,8,12], split: [2,14,16,18], double: [10], stand: [20]
      },
      {
        dealer: [3], hit: [4,6,8], split: [2,12,14,16,18], double: [10], stand: [20]
      },
      {
        dealer: [4,5,6], hit: [8], split: [2,4,6,12,14,16,18], double: [10], stand: [20]
      },
      {
        dealer: [7], hit: [8,12], split: [2,4,6,14,16], double: [10], stand: [18,20]
      },
      {
        dealer: [8,9], hit: [4,6,8,12,14], split: [2,16,18], double: [10], stand: [20]
      },
      {
        dealer: [10, 'J', 'Q', 'K'], hit: [4,6,8,10,12,14,16], split: [2], double: [], stand: [18,20]
      },
      {
        dealer: ['A'], hit: [4,6,8,10,12,14,16,2], split: [], double: [], stand: [18,20]
      }
    ]
  end
end