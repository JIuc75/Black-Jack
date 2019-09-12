# frozen_string_literal: true

# class
class Card
  attr_reader :value, :suit

  SUITS = %w[♣ ♠ ♦ ♥].freeze
  VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def score
    return @value.to_i if @value =~ /\d/
    return 10 if @value =~ /[JQK]/
    return 11 if @value =~ /A/
  end
end
