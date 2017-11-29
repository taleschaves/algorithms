# min number of coins that sum is S

# 1, 3, 5

coins = [1,3,5]

S = 20
min_coins = [0]

i = 0
while i <= S do
  j = 0
  #puts "i: #{i}"
  #puts "j: #{j}"
  while j < coins.size
    if coins[j] <= i
      previous_n = i - coins[j]
      #puts "previous_n: #{previous_n}"
      if min_coins[i].nil? || (min_coins[previous_n] + 1) < min_coins[i]
        min_coins[i] = min_coins[previous_n] + 1
      end
    end
    j = j + 1
  end
  i = i + 1
end

(0..S).each do |i|
  puts "i[#{i}]: #{min_coins[i]}"
end
