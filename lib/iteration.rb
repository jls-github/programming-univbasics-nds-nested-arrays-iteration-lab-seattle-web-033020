def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  return_value = []
  inner_array = []
  src.each do |array|
    array.each do |element|
      inner_array.push(element)
    end
    return_value = return_value.push("I love #{inner_array[0]} and #{inner_array[1]} on my pizza")
    inner_array = []
  end
  return return_value
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  return_value = []
  greatest_inner_value = ""
  
  src.each do |number_pair|
    number_pair.each do |number|
      if greatest_inner_value == ""
        greatest_inner_value = number
      elsif number > greatest_inner_value
        greatest_inner_value = number
      end
    end
    return_value.push(greatest_inner_value)
    greatest_inner_value = ""
  end
  return return_value
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  total = 0
  num1 = 0
  num2 = 0
  counter = 0
  
  src.each do |pair|
    pair.each do |num|
      (counter == 0) ? (num1 = num) : (num2 = num)
      
      
    end
    
    
    num1 = 0
    num2 = 0
    counter = 0
  end
      
end
