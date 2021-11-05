numbers = []

puts "Enter the 1st number"
first = gets.chomp.to_i
numbers << first

puts "Enter the 2nd number"
second = gets.chomp.to_i
numbers << second

puts "Enter the 3rd number"
third = gets.chomp.to_i
numbers << third

puts "Enter the 4th number"
forth = gets.chomp.to_i
numbers << forth

puts "Enter the 5th number"
fifth = gets.chomp.to_i
numbers << fifth

puts "Enter the last number"
last = gets.chomp.to_i

if numbers.include? last
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}"
end