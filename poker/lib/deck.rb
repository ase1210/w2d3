require_relative 'card'

class Deck

  attr_reader :full_deck

  def initialize
    @full_deck = []
    create_52_card_deck
    full_deck.shuffle!
  end

  private

  def create_52_card_deck
    suits = %w(heart diamond spade club)
    values = %w(2 3 4 5 6 7 8 9 10 J Q K A)

    suits.each do |suit|
      values.each do |value|
        full_deck << Card.new(value, suit)
      end
    end
  end

end