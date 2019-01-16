require "rspec"
require 'tdd_project'

describe "tdd_project" do

  describe "#my_uniq" do
  subject(:array) { [1, 2, 1, 3, 2, 1, 3, 4] }

    it "returns only unique elements in the order that they first appear" do
      uniq = array.uniq
      expect(my_uniq(array)).to eq(uniq)
    end
  end

  describe "#two_sum" do
  subject(:array) { [-1, 0, 2, -2, 1, 0] }

    it "finds pairs of indices where elements sum to zero in dictionary order" do
      pairs = [[0,4], [1,5], [2,3]]
      expect(two_sum(array)).to eq(pairs)
    end
  end
  
  describe "#my_transpose" do
  subject(:array) { [[1,2,3], [4,5,6], [7,8,9]] }

    it "transposes a square matrix from row to column orientation" do
      transposed = [[1,4,7], [2,5,8], [3,6,9]]
      expect(my_transpose(array)).to eq(transposed)
    end
  end

  describe "#stock_picker" do
  subject(:array) { [20, 22, 19, 11, 21, 25, 26, 17, 11] }
  
    it "outputs the most profitable pair of days to buy and sell the stock" do
      max_profit_array = [3,6]
      expect(stock_picker(array)).to eq(max_profit_array)
    end
  end
  
end

