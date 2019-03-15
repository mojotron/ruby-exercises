require "./lib/substrings"

RSpec.describe do
  before {@dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]}

  context "#substrings" do
    it "single word, with multiple dictionary match" do
      actual = substrings("below",@dictionary)
      expected = { "below" => 1, "low" => 1 }
      expect(actual).to eq expected
    end
    it "multiple words, with multiple dictionary match" do
      actual = substrings("Howdy partner, sit down! How's it going?",@dictionary)
      expected = {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
      expect(actual).to eq expected
    end
    it "multiple reapiting words, with multiple dictionary match" do
      actual = substrings("Howdy partner, Howdy partner, Howdy partner",@dictionary)
      expected = {"how"=>3, "howdy"=>3, "part"=>3, "partner"=>3}
      expect(actual).to eq expected
    end
  end
end