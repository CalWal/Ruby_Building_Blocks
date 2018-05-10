def stock_picker(arr)
	buy = arr[1] - arr[0]
	sell= [0, 1]
	for i in 0...(arr.length-1)
		for j in i+1...(arr.length)
			if arr[j] - arr[i] > buy
				buy = arr[j] - arr[i]
				sell = [i, j]
			end
		end
	end

	sell
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
