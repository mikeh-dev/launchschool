require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.is_a?(Float)
end

def number?(num)
  num.is_s?(Float || Integer)
end

loanamount = ""
apr = ""
duration = ""

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do
  loop do
    prompt("Please enter your required loan amount.. ")
    loanamount = gets.chomp.to_f
    if valid_number?(loanamount)
      break
    else
      prompt("You didn't enter a valid loan amount!")
    end
  end

  loop do
    prompt("Please enter your APR Rate.. ")
    apr = gets.chomp
    apr = "0.0#{apr}".to_f
    if valid_number?(apr)
      break
    else
      prompt("You didn't enter a valid APR Rate!")
    end
  end

  loop do
    prompt("Please enter your loan duration in years.. ")
    duration = gets.chomp.to_f
    if valid_number?(duration)
      break
    else
      prompt("You didn't enter a valid loan duration!")
    end
  end

  puts "Your requested loan amount is £#{loanamount}"
  puts "Your APR Rate is #{apr}%"
  puts "Your loan duration is #{duration} years."

  puts "Calculating the loan..."
  sleep(1)

  periods = duration * 12
  monthlyinterest = apr / 12

  payment = loanamount * (monthlyinterest / (1 -
    (1 + monthlyinterest)**(-periods)))
  payment = payment.floor(2)

  periods =  periods.to_i

  puts "Your Total monthly payment will be £#{payment} over #{periods} months"

  prompt("Do you want to perform another loan calculation?.. ")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end
