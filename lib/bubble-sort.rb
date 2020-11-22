def bubble_sort(arr)
  arr_length = arr.size

  j = 0
  while j < arr_length - 1 do
    i = 0
    while i < arr_length - 1 do
      if arr[i] > arr[i + 1]
        arr.insert(i, arr.delete_at(i + 1))
      end
      i += 1
    end
    j += 1
  end
  return arr
end

bubble_sort([6,23,653,85,032,54])