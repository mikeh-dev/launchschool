require "pry"

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  answer = Hash.new(0)
  
  arr.each { |item| answer[item] += 1}
  binding.pry
  answer.each {|key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)