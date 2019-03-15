require "./lib/bubble_sort"

RSpec.describe do
  context "#bubble_sort" do
    it "sorting numbers" do
      expect(bubble_sort([9,8,7,6,5,4,3,2,1])).to eq [1,2,3,4,5,6,7,8,9]
    end
    it "sorting words" do
      expect(bubble_sort(['D','A','C','B'])).to eq ['A','B','C','D']
    end
  end

  context "#bubble_sort_by" do
    it "sort by length" do
      actual = bubble_sort_by(["hi","hello","hey"]){|item1,item2| item1.length - item2.length}
      expected = ["hi", "hey", "hello"]
      expect(actual).to eq expected
    end
    it "sort by value" do
      actual = bubble_sort_by([1,2,3,4,5]){|item1,item2| item2 - item1}
      expected = [5,4,3,2,1]
      expect(actual).to eq expected
    end
  end
end