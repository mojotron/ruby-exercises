def caesar_cipher(input,shift)
	down_alphabeth = ('a'..'z').to_a
	up_alphabeth = ('A'..'Z').to_a
	result = ''
	x = 0
	while(x < input.length)
		if(down_alphabeth.include?(input[x]))
			step = (down_alphabeth.index(input[x])+shift)%26
			result += down_alphabeth[step]
		elsif(up_alphabeth.include?(input[x]))
			step = (up_alphabeth.index(input[x])+shift)%26
			result += up_alphabeth[step]
		else
			result += input[x]
		end
		x += 1
	end
	return result
end

def caesar_cipher2(input,shift)
	result = ''
	x = 0
	while(x < input.length)
		if(('a'..'z').include?(input[x]))
			result += (((input[x].ord + shift - 97) % 26) + 97).chr
		elsif (('A'..'Z').include?(input[x]))
			result += (((input[x].ord + shift - 65) % 26) + 65).chr
		else
			result += input[x]			
		end
		x += 1
	end
	return result
end

def caesar_dicipher(input,shift)
	down_alphabeth = ('a'..'z').to_a
	up_alphabeth = ('A'..'Z').to_a
	result = ''
	x = 0
	while(x < input.length)
		if(down_alphabeth.include?(input[x]))
			step = (down_alphabeth.index(input[x])-shift)%26
			result += down_alphabeth[step]
		elsif(up_alphabeth.include?(input[x]))
			step = (up_alphabeth.index(input[x])-shift)%26
			result += up_alphabeth[step]
		else
			result += input[x]
		end
		x += 1
	end
	return result
end

def caesar_dicipher2(input,shift)
	result = ''
	x = 0
	while(x < input.length)
		if(('a'..'z').include?(input[x]))
			result += (((input[x].ord - shift - 97) % 26) + 97).chr
		elsif (('A'..'Z').include?(input[x]))
			result += (((input[x].ord - shift - 65) % 26) + 65).chr
		else
			result += input[x]			
		end
		x += 1
	end
	return result
end


