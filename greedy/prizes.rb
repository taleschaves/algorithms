n = gets.chomp.to_i

total = 0
next_element = 1
arr = []

while true do
  if n - total > arr.size # 1 > 1
    arr << next_element # 1
    total += next_element
    next_element += 1 # 2
  else
    arr[arr.size-1] += (n - total)
    break
  end
end

puts arr.size
puts arr
