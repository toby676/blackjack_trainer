class RandomCardGenerator
  def call
    ((2..10).to_a + ['J', 'Q', 'K', 'A']).sample
  end
end