# frozen_string_literal: true

# Players class
class Players
  attr_reader :name, :hand
  attr_accessor :money

  def initialize(name)
    @name = name
    @hand = Hand.new
    @money = 100
  end
end
