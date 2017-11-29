def count_occurrences(a, l, r, element)
  count = 0
  (l..r).each do |i|
    count +=1 if a[i] == element
  end
  count
end

def get_majority_element(a, l, r)
  return a[r] if (l == r)

  left = get_majority_element(a, l, (l+r)/2)
  right = get_majority_element(a, (l+r)/2 + 1, r)

  count_left = left != -1 ? count_occurrences(a, l, r, left) : 0
  count_right = right != -1 ? count_occurrences(a, l, r, right) : 0

  half_n = (r-l)/2 + 1
  return left if count_left > half_n
  return right if count_right > half_n
  -1
end

items = [1, 2, 0, 3, 2, 10, 2, 2]
puts get_majority_element(items, 0, items.size-1)
