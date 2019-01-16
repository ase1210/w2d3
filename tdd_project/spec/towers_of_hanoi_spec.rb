require "rspec"
require 'towers_of_hanoi'

describe "Towers of Hanoi" do
  
  describe "#initialize" do
    it "creates 3 disks"
    it "creates a stacks array with 3 sub-arrays"
    it ""
  end

  describe "#move" do
    context "makes an invalid move" do
      it "selects an empty stack to move from"
      it "moves a larger disk onto a smaller disk"
    end

    context "making a valid move" do
      it "successfully moves a small disk onto a larger disk"
      it "allows any size disk to be put on an empty stack"
    end
  end	
  
  describe "#won?" do
      it "returns false when game is not over"    
      it "returns true when game is over"
  end	
  
end