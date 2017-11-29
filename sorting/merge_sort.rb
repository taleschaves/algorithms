def merge(a, b)
  a_i = 0
  b_i = 0
  c = []

  while (a_i < a.size && b_i < b.size)
    if a[a_i] < b[b_i]
      c << a[a_i]
      a_i += 1
    else
      c << b[b_i]
      b_i += 1
    end
  end

  while(a_i < a.size)
    c << a[a_i]
    a_i += 1
  end

  while(b_i < b.size)
    c << b[b_i]
    b_i += 1
  end

  c
end

def merge_sort(elements)
  if elements.size == 1
    return elements
  else
    mid_point = elements.size / 2
    a = merge_sort(elements[0...mid_point])
    b = merge_sort(elements[mid_point..-1])
    merge(a, b)
  end
end

a = [10, 2, -1, 5, 22, 7]
puts merge_sort(a)
