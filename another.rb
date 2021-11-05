def multiply(arr, multiplier)
  new_arr = []
  
  arr.each do |number|
    answer = number *= multiplier
    new_arr << answer
  end
  
  new_arr
end



my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]