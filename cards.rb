# frozen_string_literal: true

# Class cards
class Cards
  attr_reader :suit, :value

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
