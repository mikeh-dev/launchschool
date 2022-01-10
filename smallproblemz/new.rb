def ascii_value(string)
  letters = string.split(//)
  values = []
  letters.each do |letter|
    values << letter.ord
  end
  values.sum
end





puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

