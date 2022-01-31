require 'pry'

deck1 = [
  ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'], ['H', 'A'],
  ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'], ['D', 'A'],
  ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A'],
  ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A']
]

playerhand = [deck1.sample, deck1.sample]

dealerhand = [deck1.sample, deck1.sample]

def busted?(hand)
  return hand.to_i.sum > 21
end

puts "Welcome to Twenty One..."
sleep(0.5)
puts "Player Hand is #{playerhand} and #{playerhand} "
puts "Dealer Hand is #{dealerhand} and Unknown "
binding.pry
sleep(0.5)

loop do
  puts "Players turn.... Hit or Stay?.."
  playermove = gets.chomp.downcase
  break if playermove == "stay"
  playerhand << deck1.sample[1]
  puts "Player Hand is #{playerhand[0]}, #{playerhand[1]} and #{playerhand[2]} "
  break if busted?(playerhand) == true
end