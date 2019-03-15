require "./lib/my_enumerable"

RSpec.describe Enumerable do
  let(:array) { [1,3,5,2,4,6] }
  let(:actual) { [] }

  context "#my_each" do
    it "get each element * 2" do
      array.my_each { |ele| actual << ele * 2 }
      expected = [2,6,10,4,8,12]
      expect(actual).to eq expected
    end
  end

  context "#my_each_with_index" do 
    it "get indices" do
      array.my_each_with_index { |ele, idx| actual << idx }
      expected = [0,1,2,3,4,5]
      expect(actual).to eq expected
    end
    it "get elements and indices" do
      array.my_each_with_index { |ele, idx| actual << [ele, idx] }
      expected = [[1,0],[3,1],[5,2],[2,3],[4,4],[6,5]]
      expect(actual).to eq expected
    end
  end

  context "#my_select" do
    it "return even elements" do
      actual = array.my_select { |ele| ele.even? }
      expected = [2,4,6]
      expect(actual).to eq expected
    end
    it "rerurns elements with >= 4 condition" do
      actual = array.my_select { |ele| ele >= 4 }
      expected = [5,4,6]
      expect(actual).to eq expected
    end
  end

  context "#my_all?" do
    it "get true - if all elements are numbers" do
      actual = array.my_all? { |ele| ele.is_a?(Integer) }
      expected = true
      expect(actual).to eq expected
    end
    it "get false - if all elements are <= 5" do
      actual = array.my_all? { |ele| ele <= 5 }
      expected = false
      expect(actual).to eq expected
    end
  end

  context "my_any?" do
    it "get true - is any element is equal 3" do
      actual = array.my_any? { |ele| ele == 3 }
      expect(actual).to eq true
    end
    it "get false - is any element is String" do
      actual = array.my_any? { |ele| ele.is_a?(String) }
      expect(actual).not_to eq true
    end
  end

  context "#my_none?" do
    it "get true - if condition in block is not in array" do
      actual = array.my_none? { |ele| ele == 7 }
      expect(actual).to eq true
    end
    it "get false - if condition in block is in array" do
      actual = array.my_none? { |ele| ele == 3 }
      expect(actual).not_to eq true
    end
  end

  context "#my_count" do
    it "count elements without block and with out param" do
      actual = array.my_count()
      expect(actual).to eq 6
    end
    it "count elements without block with param" do
      actual = array.my_count(2)
      expect(actual).to eq 1
    end
    it "count elements with block" do
      actual = array.my_count { |ele| ele > 2 }
      expect(actual).to eq 4
    end
  end

  context "#my_map" do
    it "returns modified array, add 1 to all elements" do
      actual = array.my_map { |ele| ele + 1 }
      expected = [2,4,6,3,5,7]
      expect(actual).to eq expected
    end
  end

  context "#my_inject" do
    it "sum up all numbers in array" do
      actual = array.my_inject(0) { |total, ele| total += ele }
      expect(actual).to eq 21
    end
  end
end