def stringy(input)
  output = ""
    while output.length != input + 1
      if input.odd? == true
        output << "0"
        input -= 1
      else
        output << "1"
        input -= 1
      end
    end
  print output
end




puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'