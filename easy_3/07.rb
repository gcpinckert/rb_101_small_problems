# Write a method that:
  # Returns an array containing every other element
  # Of an array passed in as an argument
  # Vals in the returned list should be 1st, 3rd, 5th elements of argument

def oddities(array)
  result = []
  array.each_with_index do |element, index|
    result << element if index.even?
  end

  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def even_elements(array)
  result = []
  array.each_with_index do |element, index|
    result << element if index.odd?
  end

  result
end

