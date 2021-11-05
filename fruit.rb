produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(input)
  input.each do |key, value| 
    if value == "Fruit"
      puts "#{key}=>#{value}"
    end
  end
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

