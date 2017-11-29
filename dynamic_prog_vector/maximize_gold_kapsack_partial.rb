# weights = [0, 1, 4, 8].sort
# matrix = [[0,0,0,0,0,0,0,0,0,0,0], [0],[0],[0]]

max_weight, number = gets.chomp.split.map(&:to_i)
weights = gets.chomp.split.map(&:to_i).sort
weights = weights.unshift(0)

matrix = []

# initialize first column with 0's
matrix[0] = [0]
i=1
while i <= number
  matrix[i] = []
  matrix[i][0] = 0
  i+=1
end

# initialize first line with 0's
j=1
while j <= max_weight
  matrix[0][j] = 0
  j+=1
end

# compute
i=1
while i < weights.size
  j = 1
  while j <= max_weight
    matrix[i][j] = matrix[i-1][j]

    wi = weights[i]
    if wi <= j
      value = matrix[i-1][j - wi] + wi
      if value > matrix[i][j]
        matrix[i][j] = value
      end
    end
    j+=1
  end
  i+=1
end

# print output
# i=0
# while i < weights.size
#   j = 0
#   while j <= max_weight
#     print matrix[i][j]
#     print " "
#     j+=1
#   end
#   print "\n"
#   i+=1
# end

puts matrix[number][max_weight]
