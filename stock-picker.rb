def stock_picker(arr)
  best_profit = nil
  result = []
  arr_length = arr.size

  arr.each_with_index do |value, index|
    for j in index+1...arr_length do
      profit = arr[j] - value
      if (best_profit == nil || profit > best_profit)
        best_profit = profit
        result = [index, j]
      end
    end
  end
  return result
end

stock_picker([17,3,6,9,15,8,6,1,10])