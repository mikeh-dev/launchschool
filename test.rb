def palindrome?(quote)
  puts quote.reverse == quote
end

def real_palindrome?(input)
  input.gsub!(/[^0-9a-z ]/i, '')
  input.gsub!(/\s+/, "")
  new = input.downcase
  palindrome?(new)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false