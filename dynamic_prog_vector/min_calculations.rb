input_number = gets.chomp.to_i

min_calculations = [0]
numbers = (1..input_number).to_a

# create array with results of min calculations
i = 1
while i < input_number
  if numbers[i] % 3 == 0
    previous_n = numbers[i] / 3
    if min_calculations[i].nil? || min_calculations[previous_n-1] + 1 < min_calculations[i]
      min_calculations[i] = min_calculations[previous_n-1] + 1
    end
  end

  if numbers[i] % 2 == 0
    previous_n = numbers[i] / 2
    if min_calculations[i].nil? || min_calculations[previous_n-1] + 1 <  min_calculations[i]
      min_calculations[i] = min_calculations[previous_n-1] + 1
    end
  end

  if min_calculations[i].nil? || min_calculations[i-1] + 1 < min_calculations[i]
    min_calculations[i] = min_calculations[i-1] + 1
  end

  i+=1
end

# gather all intermediate results
i = input_number-1
result_array = []
while (i >= 1)
  result_array << i + 1
  if (min_calculations[i] - 1) == min_calculations[i-1]
    i = i - 1
  elsif (min_calculations[i] % 2 == 0) && (min_calculations[i/2] == min_calculations[i] - 1)
    i = i / 2
  else
    i = i / 3
  end
end
result_array << 1

puts min_calculations[i-1]
puts result_array.reverse.join(" ")
