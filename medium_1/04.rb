=begin
- Bank of switches 1 - `n`
- Each switch is connected to exactly one light
- All the lights are initially off
- First, toggle all switches on
- 2nd, toggle multiples of 2 (2, 4, 6, ...) switches
- 3rd, toggle multiples of 3 switches (3, 6, 9, ...)
- Repeat this process and keep going until you have been through `n` cycles
  - Keep toggling muliples of the current iteration, don't just repeat the
    above steps (i.e. 4th iteration will be multiples of 4, etc)

Input (argument): integer, the total number of switches
Output (returns): array, identifies which lights are on after `n` cycles

Examples:
n = 5 lights:
  1) every light is turned on
    * * * * *
  2) lights 2 and 4 are now off; 1, 3, and 5 are on
    * - * - *
  3) lights 2, 3, and 4 are now off; 1 and 5 are on
    * - - - *
  4) lights 2 and 3 are now off, 1, 4, and 5 are on
    * - - * *
  5) lights 2, 3, and 5 are off, 1 and 4 are on
    * - - * -
Result, 2 lights are left on, 1 and 4. 
Return [1, 4] as an array

n = 10
  1) * * * * * * * * * *
  2) * - * - * - * - * -
  3) * - - - * * * - - -
  4) * - - * * * * * - -
  5) * - - * - * * * - *
  6) * - - * - - * * - *
  7) * - - * - - - * - *
  8) * - - * - - - - - *
  9) * - - * - - - - * *
  10)* - - * - - - - * -
Returns [1, 4, 9]

Algorithm:
  - Create an array of n booleans, all set to false
  - Set a counter variable = 1
  - Initialize a loop
    - Break if the counter variable > n
    - Set a counter to 0
    - Iterate through the array of booleans
      - Increment the inner counter by 1
      - If the inner counter is a multiple of the outer counter, 
        toggle the boolean
      - Otherwise, go to the next element
    - Increment the outer counter variable by 1
  - Find those lights whose value is "true" (i.e. "on")
    - Initialize an empty array
    - Iterate through the array of booleans
      - If the current element is 'true', add the current number to the array
      - Otherwise, go to the next iteration
  - Return the light numbers as an array
=end
def initialize_lights(n)
  lights = []
  n.times { lights << false }
  lights
end

def toggle_lights!(lights, n)
  1.upto(n) do |i|
    counter = 0
    lights.map! do |light|
      counter += 1
      counter % i == 0 ? !light : light
    end
  end

  lights
end

def lights_on(n)
  lights = initialize_lights(n)
  
  toggle_lights!(lights, n)

  lights_on = []
  lights.each_with_index do |light, index|
    lights_on << index + 1 if light
  end

  lights_on
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]

p lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196,
                    225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676,
                    729, 784, 841, 900, 961]