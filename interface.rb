# frozen_string_literal: true

# Class Interface
class Interface
  attr_accessor :user, :dealer

  def new_user
    print 'Введите ваше имя: '
    gets.chomp
  end

  def show_hand(hand)
    hand.each do |card|
      print "[#{card.value}#{card.suit}] "
    end
  end

  def round
    print "Рука игрока (#{@user.name}): "
    show_hand(@user.hand.cards)
  end
end
