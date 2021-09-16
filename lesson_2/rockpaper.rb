VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]
player_score = 0
computer_score = 0

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to Rock, Paper, Scissors...")

loop do
  choice = ''

  loop do
    prompt("Please enter a choice.. #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Please enter a valid choice!")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You entered #{choice} and the computer entered #{computer_choice}")

  if (choice == 'rock' && computer_choice == 'scissors') ||
     (choice == 'paper' && computer_choice == 'rock') ||
     (choice == 'scissors' && computer_choice == 'paper') ||
     (choice == 'lizard' && computer_choice == 'paper') ||
     (choice == 'rock' && computer_choice == 'lizard') ||
     (choice == 'lizard' && computer_choice == 'spock') ||
     (choice == 'spock' && computer_choice == 'scissors') ||
     (choice == 'scissors' && computer_choice == 'lizard') ||
     (choice == 'lizard' && computer_choice == 'paper') ||
     (choice == 'paper' && computer_choice == 'spock') ||
     (choice == 'spock' && computer_choice == 'rock')
     player_score += 1
    prompt("You win!")
  elsif (choice == 'rock' && computer_choice == 'paper') ||
        (choice == 'paper' && computer_choice == 'scissors') ||
        (choice == 'scissors' && computer_choice == 'rock') ||
        (choice == 'lizard' && computer_choice == 'rock') ||
        (choice == 'spock' && computer_choice == 'lizard') ||
        (choice == 'scissors' && computer_choice == 'spock') ||
        (choice == 'lizard' && computer_choice == 'scissors') ||
        (choice == 'paper' && computer_choice == 'lizard') ||
        (choice == 'spock' && computer_choice == 'paper') ||
        (choice == 'rock' && computer_choice == 'spock')
        computer_score += 1
    prompt("Computer wins!")
  else
    prompt("It's a tie")
  end

  if computer_score == 3
    prompt("COMPUTER WINS - GAME OVER")
    break
  elsif player_score == 3
    prompt("PLAYER WINS - GAME OVER")
    break
  else
    next
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
