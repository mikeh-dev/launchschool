def shout_out_to(name)
  letters = name.chars.each { |c| c.upcase! }
  name = letters.join
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

