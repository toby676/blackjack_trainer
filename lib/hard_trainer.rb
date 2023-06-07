class HardTrainer
  def initialize(dealer:)
    @dealer = dealer
  end

  def call(player:)
    :hit
  end

  private

  attr_reader :dealer
end