def bubble_sort(arr)
	(arr.size - 1).times do 
		(arr.size - 1).times do |i|
			arr[i],arr[i + 1] = arr[i + 1], arr[i] if (arr[i] <=> arr[i + 1]) == 1
		end
	end
	arr
end

def bubble_sort_by(arr)
	(arr.size - 1).times do
		(arr.size - 1).times do |x|
			if yield(arr[x], arr[x+1]) > 0
				arr[x],arr[x+1] = arr[x+1], arr[x]
			end
		end
	end
	arr
end


p bubble_sort([9,8,7,6,5,4,3,2,1])

p bubble_sort_by(["hi","hello","hey"]){|item1,item2| item1.length - item2.length}

p bubble_sort_by([1,2,3,4,5]){|item1,item2| item2 - item1}

