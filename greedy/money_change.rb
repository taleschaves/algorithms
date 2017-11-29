def min_coins(amount)
  coins = [1,5,10,25,50].reverse
  count = 0
  i = 0

  while amount > 0
    if coins[i] <= amount
      amount = amount - coins[i]
      count += 1
    else
      i += 1
    end
  end
  count
end

puts '$50'
puts min_coins 50
puts '$11'
puts min_coins 11
puts '$29'
puts min_coins 29
puts '$33'
puts min_coins 33
puts '$49'
puts min_coins 49
