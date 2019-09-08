class Player
  attr_accessor :bankroll
  attr_reader :name, :hand

  def initialize(name)
    name = 'Игрок' if name.empty?
    @name = name
    @bankroll = 100
    @hand = Hand.new
  end
end
