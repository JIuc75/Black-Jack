# frozen_string_literal: true

# class game
class Game
  attr_reader :user, :interface, :dealer

  def initialize
    @interface = Interface.new
    create_players
  end

  def create_players
    @user = Players.new(@interface.new_user)
    @dealer = Players.new('Dealer')
    @interface.user = @user
    @interface.dealer = @dealer
    start
  end

  def deal
    @deck = Deck.new
    @user.hand.add_card(@deck.take_card)
  end

  def start
    deal
    @interface.round
  end
end
