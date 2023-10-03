# frozen_string_literal: true

require 'rspec'

# Write a method, that will get an integer array as parameter and will process every number from this array.
# Return a new array with processing every number of the input-array like this:

# If the number has an integer square root, take this, otherwise square the number.
# [4,3,9,7,2,1] -> [2,9,3,49,4,1]

# The input array will always contain only positive numbers and will never be empty or null.
# The input array should not be modified!
# Have fun coding it and please don't forget to vote and rank this kata! :-)
# I have also created other katas. Take a look if you enjoyed this kata!

def square_or_square_root(arr)
  arr.map { |num| (Math.sqrt(num) % 1).zero? ? Math.sqrt(num) : num**2 }
end

p square_or_square_root([4, 3, 9, 7, 2, 1])

describe '#square_or_square_root' do
  it 'returns a new array with square and square root values' do
    expect(square_or_square_root([4, 3, 9, 7, 2, 1])).to match_array([2, 9, 3, 49, 4, 1])
  end
end
