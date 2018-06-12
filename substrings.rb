dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
	x = words.downcase.split(/\W+/)
	matches = Hash.new(0)
	x.each do |word|
		x = 0
		while(x < dictionary.size)
			if(word.include?(dictionary[x]))
				if(matches.keys.include?(dictionary[x]))
					matches[dictionary[x]] += 1
				else	
					matches[dictionary[x]] = 1
				end
			end
		x += 1
		end
	end
	matches
end

#p word_in_dictionary?("below", dictionary)#{ "below" => 1, "low" => 1 }
p substrings("below",dictionary)
p substrings("Howdy partner, sit down! How's it going?",dictionary)