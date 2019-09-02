# frozen_string_literal: true

# Class Hand
class Hand
  attr_reader :cards, :score

  def initialize
    @cards = []
  end

  def add_card(card)
    @cards << card
  end

  def calc_score
    @score = 0
    @cards.each { |card| @score += card.score }
    @cards.select { |card| card.value =~ /A/ }.each do
      @score -= 10 if @score > 21
    end
  end

  def drop
    @cards = []
    @score = 0
  end
end
