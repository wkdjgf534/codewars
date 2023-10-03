# frozen_string_literal: true

require 'rspec'

# The two oldest ages function/method needs to be completed. It should take an array of numbers as its
# argument and return the two highest numbers within the array. The returned value should be an array
# in the format [second oldest age, oldest age].

# The order of the numbers passed in could be any order. The array will always include at least 2 items.

# For example:

# two_oldest_ages([1, 3, 10, 0]) => [3, 10]

array_of_ages = [1, 5, 87, 45, 8, 8, 16, 34]

def two_oldest_ages(ages)
  ages.max(2).sort
end

p two_oldest_ages(array_of_ages)

describe '#two_oldest_ages' do
  it 'returns an array of two the oldest ages' do
    expect(two_oldest_ages(array_of_ages)).to match_array([45, 87])
  end
end
