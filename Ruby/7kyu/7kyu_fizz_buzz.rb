# frozen_string_literal: true

require 'rspec'

# Return an array containing the numbers from 1 to N, where N is the parametered value. N will never be less than 1 (in C#, N might be less then 1).
# C# ONLY: If N is smaller then or equal to 0, throw an ArgumentOutOfRangeException!
# Replace certain values however if any of the following conditions are met:
# If the value is a multiple of 3: use the value 'Fizz' instead
# If the value is a multiple of 5: use the value 'Buzz' instead
# If the value is a multiple of 3 & 5: use the value 'FizzBuzz' instead

# C# method calling example:
# string[] result = FizzBuzz.GetFizzBuzzArray(3); // => [ "1", "2", "Fizz" ]

def fizzbuzz(num)
  (1..num).map do |n|
    y = ''
    y += 'Fizz' if (n % 3).zero?
    y += 'Buzz' if (n % 5).zero?
    y == '' ? n : y
  end
end

p fizzbuzz(15)

describe '#fizzbuzz' do
  it 'returns an array with values' do
    expect(fizzbuzz(6)).to match_array([1, 2, 'Fizz', 4, 'Buzz', 5, 'Fizz'])
  end
end
