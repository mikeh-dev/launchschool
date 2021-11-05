# PP4
=begin
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4


arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2.first[1][:a][2] = 4

#PP5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each_value do |munster|
  total_age += munster["age"] if munster["gender"] == "male"
end

total_age

#PP6

munsters.each_pair do |key, value|
  puts "#{key} is a #{value['age']} year-old #{value['gender']}"
end

#PP7
a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

#answer [4, [3,8]]

#PP8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = "aeiou"

hsh.each do |word|
  item = word[1]
  item.each do |x|
    x.chars.each do |char|
    puts char if vowels.include?(char)
    end
  end
end

#PP9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |nested|
  nested.sort do |a, b|
    b <=> a
  end
end



#PP10
#Close but wrong

#PP11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |element|
  element.reject do |number|
    number  3 != 0
  end
end


#PP12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

arr.each do |sub|
  newhash = {}
  newhash[sub[0]] = sub[1]
  puts newhash
end


#PP13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |a|
  a.select do |num|
    num.odd?
  end
end

#sort by descending


#PP14

#iterate over the hash using map
#select the colors if type is fruit
#select the size if type is vegetable
#uppercase the sizes and capitalize the colors
#return new array

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, item|
  if item[:type] == 'fruit'
    item[:colors].map do |color|
      color.capitalize
    end
  elsif item[:type] == 'vegetable'
    item[:size].upcase
  end
end

#PP15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

  arr.select do |hash|
    hash.all? do |_, num|
      num.all? do |another|
        another.even?
    end
  end
end

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_pair do |name, age| 
  puts "#{name} is a #{age['age']}-year-old #{age['gender']}"
end
