require 'rspec'
require 'card'

describe "Card" do
  subject(:a_hearts) { Card.new("A", "heart") }

  describe "#initialize" do
  
  it "takes in a value" do
    expect(a_hearts.value).to eq("A")
  end
  
  it "takes in a suit" do
    expect(a_hearts.suit).to eq("heart")
  end
  
end


end