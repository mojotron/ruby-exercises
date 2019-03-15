require "./lib/caesar_cipher"

RSpec.describe do
  context "#caesar_cipher - first version" do
    it "1 letter shift" do
      actual = caesar_cipher2("abc",1)
      expected = "bcd"
      expect(actual).to eq expected
    end
    it "end of alphabeth 3 letter shift" do
      actual = caesar_cipher2("xyz",3)
      expected = "abc"
      expect(actual).to eq expected
    end
    it "capital letters" do
      actual = caesar_cipher2("XYZ",3)
      expected = "ABC"
      expect(actual).to eq expected
    end
    it "5 letter shift" do
      actual = caesar_cipher2("What a string!",5)
      expected = "Bmfy f xywnsl!"
      expect(actual).to eq expected
    end
    it  "75 letter shift" do
      actual = caesar_cipher2("Hello, World!", 75)
      expected = "Ebiil, Tloia!"
      expect(actual).to eq expected
    end
    it "negative shift" do
      actual = caesar_cipher2("Mjqqt, Btwqi!", -5)
      expected = "Hello, World!"
      expect(actual).to eq expected
    end
    it "non alphabeth chars" do
      actual = caesar_cipher2("?&%$ abc ?&%$#",1)
      expected = "?&%$ bcd ?&%$#"
      expect(actual).to eq expected
    end
    it "empty string" do
      actual = caesar_cipher2("",10)
      expected = ""
      expect(actual).to eq expected
    end
    it "without shift" do
      actual = caesar_cipher2("Hello!",0)
      expected = "Hello!"
      expect(actual).to eq expected
    end
  end

  context "#caesar_cipher2 - second version" do
    it "1 letter shift" do
      actual = caesar_cipher("abc",1)
      expected = "bcd"
      expect(actual).to eq expected
    end
    it "end of alphabeth 3 letter shift" do
      actual = caesar_cipher("xyz",3)
      expected = "abc"
      expect(actual).to eq expected
    end
    it "capital letters" do
      actual = caesar_cipher("XYZ",3)
      expected = "ABC"
      expect(actual).to eq expected
    end
    it "5 letter shift" do
      actual = caesar_cipher("What a string!",5)
      expected = "Bmfy f xywnsl!"
      expect(actual).to eq expected
    end
    it  "75 letter shift" do
      actual = caesar_cipher("Hello, World!", 75)
      expected = "Ebiil, Tloia!"
      expect(actual).to eq expected
    end
    it "negative shift" do
      actual = caesar_cipher("Mjqqt, Btwqi!", -5)
      expected = "Hello, World!"
      expect(actual).to eq expected
    end
    it "non alphabeth chars" do
      actual = caesar_cipher("?&%$ abc ?&%$#",1)
      expected = "?&%$ bcd ?&%$#"
      expect(actual).to eq expected
    end
    it "empty string" do
      actual = caesar_cipher("",10)
      expected = ""
      expect(actual).to eq expected
    end
    it "without shift" do
      actual = caesar_cipher("Hello!",0)
      expected = "Hello!"
      expect(actual).to eq expected
    end
  end

  context "#caesar_dicipher - first version" do
    it "1 letter shift" do
      actual = caesar_dicipher("bcd",1)
      expected = "abc"
      expect(actual).to eq expected
    end
    it "end of alphabeth 3 letter shift" do
      actual = caesar_dicipher("abc",3)
      expected = "xyz"
      expect(actual).to eq expected
    end
    it "capital letters" do
      actual = caesar_dicipher("ABC",3)
      expected = "XYZ"
      expect(actual).to eq expected
    end
    it "5 letter shift" do
      actual = caesar_dicipher("Bmfy f xywnsl!",5)
      expected = "What a string!"
      expect(actual).to eq expected
    end
    it  "75 letter shift" do
      actual = caesar_dicipher("Ebiil, Tloia!", 75)
      expected = "Hello, World!"
      expect(actual).to eq expected
    end
    it "negative shift" do
      actual = caesar_dicipher("Hello, World!", -5)
      expected = "Mjqqt, Btwqi!"
      expect(actual).to eq expected
    end
    it "non alphabeth chars" do
      actual = caesar_dicipher("?&%$ bcd ?&%$#",1)
      expected = "?&%$ abc ?&%$#"
      expect(actual).to eq expected
    end
    it "empty string" do
      actual = caesar_dicipher("",10)
      expected = ""
      expect(actual).to eq expected
    end
    it "without shift" do
      actual = caesar_dicipher("Hello!",0)
      expected = "Hello!"
      expect(actual).to eq expected
    end
  end

  context "#caesar_dicipher - second version" do
    it "1 letter shift" do
      actual = caesar_dicipher2("bcd",1)
      expected = "abc"
      expect(actual).to eq expected
    end
    it "end of alphabeth 3 letter shift" do
      actual = caesar_dicipher2("abc",3)
      expected = "xyz"
      expect(actual).to eq expected
    end
    it "capital letters" do
      actual = caesar_dicipher2("ABC",3)
      expected = "XYZ"
      expect(actual).to eq expected
    end
    it "5 letter shift" do
      actual = caesar_dicipher2("Bmfy f xywnsl!",5)
      expected = "What a string!"
      expect(actual).to eq expected
    end
    it  "75 letter shift" do
      actual = caesar_dicipher2("Ebiil, Tloia!", 75)
      expected = "Hello, World!"
      expect(actual).to eq expected
    end
    it "negative shift" do
      actual = caesar_dicipher2("Hello, World!", -5)
      expected = "Mjqqt, Btwqi!"
      expect(actual).to eq expected
    end
    it "non alphabeth chars" do
      actual = caesar_dicipher2("?&%$ bcd ?&%$#",1)
      expected = "?&%$ abc ?&%$#"
      expect(actual).to eq expected
    end
    it "empty string" do
      actual = caesar_dicipher2("",10)
      expected = ""
      expect(actual).to eq expected
    end
    it "without shift" do
      actual = caesar_dicipher2("Hello!",0)
      expected = "Hello!"
      expect(actual).to eq expected
    end
  end
end