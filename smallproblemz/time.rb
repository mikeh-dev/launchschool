def swap(sentence)
  words = sentence.split
  p words
  words.each do |word|
    word << word.slice!(0)
    word[0] = word.slice!(word[-1])
  end
  p words
end



puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'