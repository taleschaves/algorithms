MAX_VALUE = 99999999

def swap(elements, i, j)
  aux = elements[i]
  elements[i] = elements[j]
  elements[j] = aux
end

def selection_sort(elements)
  (0...elements.size-1).each do |i|
    min = MAX_VALUE
    min_index = -1

    (i...elements.size).each do |j|
      if elements[j] < min
        min = elements[j]
        min_index = j
      end
    end

    swap(elements, i, min_index)
  end

  elements
end

a = [9, 2, 3, 4, 100, -1]

puts selection_sort(a)
