def msort(arr)
  size = arr.length
  half_size = size / 2

  return arr if size < 2

  left = msort(arr[0, half_size])
  right = msort(arr[half_size..size])
  merge(left, right)
end

def merge(left, right)
  return right if left.empty?
  return left if right.empty?

  left[0] < right[0] ? [left[0]] + merge(left[1..-1], right) : [right[0]] + merge(left, right[1..-1])
end

msort([3, 6, 4, 1, 2, 7, 5, 8])
