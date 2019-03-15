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
