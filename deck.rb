# frozen_string_literal: true

# class
class Deck < Card
  def initialize
    @cards = []
    create_deck
    @cards.shuffle!
  end

  def create_deck
    VALUES.each do |value|
      SUITS.each { |suit| @cards << Card.new(value, suit) }
    end
  end

  def take_card
    @cards.pop
  end
end
