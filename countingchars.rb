puts "Please input a word or phrase"
input = gets.chomp
input.strip!
total = input.length

puts "There are #{total} characters in #{input}."