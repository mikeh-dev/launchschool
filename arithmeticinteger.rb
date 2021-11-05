def message(text)
  puts "==> #{text}"
end

def sums(num1, num2)
  message("#{num1} + #{num2} = #{num1 + num2}")
  message("#{num1} - #{num2} = #{num1 - num2}")
  message("#{num1} * #{num2} = #{num1 * num2}")
  message("#{num1} / #{num2} = #{num1 / num2}")
  message("#{num1} % #{num2} = #{num1 % num2}")
  message("#{num1} ** #{num2} = #{num1 ** num2}")
end

message("Enter the first number")
first = gets.chomp.to_i
message("Enter the second number")
second = gets.chomp.to_i


sums(first, second)

