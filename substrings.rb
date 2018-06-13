dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
	x = words.downcase.split(/\W+/)
	matches = Hash.new(0)
	
	x.each do |word|
		dictionary.each do |d_word|
			if word.include?(d_word)
				matches[d_word] += 1
			end
		end
	end
	matches
end

#p word_in_dictionary?("below", dictionary)#{ "below" => 1, "low" => 1 }
p substrings("below",dictionary)
p substrings("Howdy partner, sit down! How's it going?",dictionary)
p substrings("Howdy partner, Howdy partner, Howdy partner",dictionary)