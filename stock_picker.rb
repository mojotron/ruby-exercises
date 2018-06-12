def stock_picker(input)
	days = input.clone
	pairs = []
	diff = []
	#remove edge cases, cant sell before buy 
	input.delete(input.first) if input.max == input.first
	
	#or sell if you bought last day
	input.delete(input.last) if input.min == input.last
	
	#set all combinations pairs [best_buy, best_sell]
	while(input.size > 0)
		buy = (input.min)
		ind = input.index(buy)
		sell = (input[ind..-1]).max
		pairs << [buy, sell]
		diff << (sell - buy)
		input -= [buy, sell]
	end
	#find pair with best_profit, using index becasue they have same
	best_profit = diff.index(diff.max)
	puts "Day #{days.index(pairs[best_profit][0]) + 1 } is best for buying."
	puts "Day #{days.index(pairs[best_profit][1]) + 1 } is best for selling."
	puts "It brings profit of $#{diff.max}"
	
	pairs[best_profit]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([1,2,11,9])
p stock_picker([3,11,9,8,2,4,1])
p stock_picker([45,7,25,16,13,30])
p stock_picker([3,75,3,45,3,12,75,45,1])
p stock_picker([45,7,25,16,2,30])


