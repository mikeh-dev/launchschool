require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.kind_of? Float
end

def number?(num)
  num.kind_of? Float || Integer
end

def operation_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    'Subtracting'
  when '3'
    'Dividing'
  when '4'
    "Multiplying"
  end
end

input1 = ""
input2 = ""

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
      prompt("Please enter a first number")
      input1 = gets.chomp.to_f
      if valid_number?(input1)
        break
      else
        prompt("You didn't enter a number!")
      end
    end

    loop do
      prompt("Please enter a second number")
      input2 = gets.chomp.to_f
      if valid_number?(input2)
        break
      else
        prompt("You didn't enter a number!")
      end
    end

  puts "First Number is #{input1}"
  puts "Second Number is #{input2}"

    operator_prompt = <<-MSG
      What would you like to do?.. 
        (1) add
        (2)subtract
        (3)divide
        (4)multiply...
    MSG

    prompt(operator_prompt)

  operation = ''
    loop do
      operation = gets.chomp

      if %w(1 2 3 4).include?(operation)
        break
      else
        prompt("Must choose 1, 2, 3 or 4")
      end
    end

    prompt("#{operation_to_message(operation)} the two numbers...")
  

  result = case operation
            when '1'
              input1 + input2
            when '2'
              input1 - input2
            when '3'
              input1 / input2
            when '4'
              input * input2
            end

  puts "The answer is #{result}!"

  prompt("Do you want to perform another calculation?")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end