def multisum(num)
  nums = []
  for num in 1..num
    nums << num if num % 3 == 0 || num % 5 == 0
  end
  return nums.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168