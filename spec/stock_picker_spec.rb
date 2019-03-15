require "./lib/stock_picker"

RSpec.describe do 
  context "#stock_picker" do
    it "test without edge cases" do
      expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq [3,15]
    end
    it "best day to buy first day" do
      expect(stock_picker([1,2,11,9])).to eq [1,11]
    end
    it "best day to bay last day" do
      expect(stock_picker([3,11,9,8,2,4,1])).to eq [3,11]
    end
    it "best day to sell first day" do
      expect(stock_picker([45,7,25,16,13,30])).to eq [7,30]
    end
    it "multiple values of best day to buy with edge case" do
      expect(stock_picker([3,75,3,45,3,12,75,45,1])).to eq [3,75] 
    end
    it "best buy best sell last 2 days" do
      expect(stock_picker([45,7,25,16,2,30])).to eq [2,30]
    end
  end
end