# Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
#prints [1,2,3]

# Question 2
# 1. Means "is not equal to" use in conditionals
# 2. Means "not", example means "is not user_name"
# 3. Mutates the caller
# 4. Ternary operator
# 5. Checks for truthy value
# 6. Forced into a Boolean

# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

# Question 4
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) #deletes index 1
numbers.delete(1) #deletes the index matching 1

# Question 5
(10..100).member?(42)

# Question 6
famous_words = "seven years ago..."

"Four score and" + famous_words
"Four score and" << famous_words

# Question 7
flinstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flinstones.flatten!

# Question 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

new_flint = flinstones.assoc("Barney")