# frozen_string_literal: true

require 'rspec'

# Given and array of integers (x), return the result of multiplying the values together in #order.
# Example: [1, 2, 3] => 6

# For the beginner, try to use the reduce method - it comes in very handy quite a lot so is a good
# one to know. Array will not be empty.

array_of_numbers = [1, 2, 3, 4]

def grow(array)
  # inject - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-inject
  array.inject(:*)
end

p grow(array_of_numbers)

describe '#grow' do
  it 'multiplies all elements of array correctly' do
    expect(grow([1, 2, 3, 4])).to eq(24)
  end
end
