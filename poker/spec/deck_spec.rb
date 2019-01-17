require 'rspec'
require 'deck'

describe "Deck" do
  subject(:new_deck) { Deck.new }

  describe "#initialize" do
  
    it "initializes full_deck to be an array" do
      expect(new_deck.full_deck).to be_an(Array)
    end
    
    it "creates a deck of 52 cards" do
      expect(new_deck.full_deck.length).to eq(52)
    end
    
    it "creates a deck with four cards of value 2" do
      twos = new_deck.full_deck.select { |card| card.value == "2" }
      expect(twos.length).to eq(4)
    end
    
    it "creates a deck with 13 hearts" do
      hearts = new_deck.full_deck.select { |card| card.suit == "heart" }
      expect(hearts.length).to eq(13)
    end
  
  end
end