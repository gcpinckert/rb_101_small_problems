=begin
- Write a method that counts the number of occurrences of each element in
  a given array. 
- The words in the array are case-sensitive
- Once counted, print each element alongside the # of occurrences

Expected Output:
car => 4
truck => 3
SUV => 1
motorcycle => 2

Input = Array
Output = Hash

- Create a new empty hash
- Iterate through the array, for each element:
  - Add the element as a key in the hash
  - If the key doesn't already exist:
    - Set the corresponding value to 1
  - If the key does already exist:
    - Add 1 to the corresponding value
- Output each key - value pair to the user
=end

def count_occurrences(array_of_things)
  occurrences = {}

  array_of_things.each do |thing|
    if occurrences.keys.include?(thing)
      occurrences[thing] += 1
    else
      occurrences[thing] = 1
    end
  end
  
  occurrences.each { |name, number| puts "#{name} => #{number}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# BONUS: made a case-insensitive version

def case_insensitive_count_occurrences(array_of_things)
  occurrences = {}

  array_of_things.map! { |element| element.downcase }

  array_of_things.each do |thing|
    if occurrences.keys.include?(thing)
      occurrences[thing] += 1
    else
      occurrences[thing] = 1
    end
  end
  
  occurrences.each { |name, number| puts "#{name} => #{number}"}

end

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'Truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

case_insensitive_count_occurrences(vehicles)