items = [1, 5, 8, 13, 21]
find = [8]

def binary_search(array, l, r, item)
  mid_index = (l + r) / 2

  return mid_index if array[mid_index] == item
  return -1 if (l == r || r < 0)

  if item > array[mid_index]
    return binary_search(array, mid_index+1, r, item)
  else
    return binary_search(array, l, mid_index-1, item)
  end
end
