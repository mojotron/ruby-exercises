def bubble_sort(arr)
	(arr.size-1).times do 
		(arr.size-1).times do |i|
			arr[i],arr[i+1] = arr[i+1], arr[i] if (arr[i] <=> arr[i+1]) == 1
		end
	end
	arr
end

def bubble_sort_by(arr)
end


puts bubble_sort([9,8,7,6,5,4,3,2,1]).inspect