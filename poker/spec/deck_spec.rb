require 'rspec'
require 'deck'

describe "Deck" do
  subject(:new_deck) { Deck.new }
  let(:two) { double("card", value: "2") }
  let(:heart) { double("card", suit: "heart") }

  describe "#initialize" do
  
  it "initializes full_deck to be an array" do
    expect(new_deck.full_deck).to be_an(Array)
  end
  
  it "creates a deck of 52 cards" do
    expect(new_deck.full_deck.length).to eq(52)
  end
  
  it "creates a deck with four cards with value 2" do
    twos = new_deck.full_deck.select { |card| card.value == "2" }

    allow(two).to receive(:value).and_return("2")
    expect(twos.length).to eq(4)
  end
  
  it "creates a deck with 13 hearts" do
    hearts = new_deck.full_deck.select { |card| card.suit == "heart" }

    allow(heart).to receive(:suit).and_return("heart")
    expect(hearts.length).to eq(13)
  end
  
end


end