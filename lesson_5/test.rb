#5. Test Problems 

#Problem 1
arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

#Problem 2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:published]
end

#Problem 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third].first

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].keys[0]

#Problem 4
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

#Problem 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each do |munster, deets|
  if deets["gender"] == "male"
    total_age += deets["age"]
  end
end
total_age

#Problem 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, deets|
  puts "#{munster} is a #{deets['age']}-year-old #{deets['gender']}."
end

#Problem 7
a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

[2, [5, 8]]

[4, [3, 8]]

2
[3, 8]
# a didn't change as integer is not changed because not directly referenced

#Problem 8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each do |_, words|
  words.each do |word|
    word.chars.each do |letter|
      if vowels.include?(letter) # Could of shoterned Line 105 - 107 into 1 line with if modifier
        puts letter               # Could have been puts letter if vowels.include?(letter)
      end
    end
  end
end

#Problem 9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub|
  sub.sort { |a, b| b <=> a}
end

#Problem 10
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremented_hash = {} #Creates a new hash on each iteration to prevent transforming original array
  hash.each do |key, val|
    incremented_hash[key] = val += 1
  end
  incremented_hash #returns populated new hash
end

#Problem 11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |arr|
  arr.select { |num| num % 3 == 0 }
end

#Problem 12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new_hash = {}

arr.map do |sub|
    new_hash[sub[0]] = sub[1] 
end

new_hash

#Problem 13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub|
  sub.select do |num|
    num.odd?
  end
  p sub
end


#Problem 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, deets|
  if deets[:type] == 'fruit'
    deets[:colors].each {|color| color.capitalize! }
  elsif deets[:type] == 'vegetable'
    deets[:size].upcase
  end
end

#Problem 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hsh|
  hsh.all? do |_, nums|
    nums.all? { |num| num.even? }
  end
end


#Problem 16
require 'securerandom'

def new_uuid
  SecureRandom.uuid
end

new_uuid