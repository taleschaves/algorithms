# 3 100
# Value Weight

VALUE = 0
WEIGHT = 1

items_count, capacity = gets.chomp.split.map{ |i| i.to_i }
puts "Items: #{items_count}"
puts "Capacity: #{capacity}"
items = []

(0...items_count).each do |i|
  items << gets.chomp.split.map{ |i| i.to_i }
end

items = items.sort_by { |item| item[VALUE] / item[WEIGHT] }.reverse

total_value = 0
i = 0

while capacity > 0
  if capacity > items[i][WEIGHT]
    capacity -= items[i][WEIGHT]
    total_value += items[i][VALUE]
  else
    unit_value =  items[i][VALUE] / items[i][WEIGHT]
    total_value += unit_value * capacity
    capacity = 0
  end
  i += 1
end

puts "Total value: #{total_value}"
