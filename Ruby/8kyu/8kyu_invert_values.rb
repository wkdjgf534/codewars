# frozen_string_literal: true

require 'rspec'

# Given a set of numbers, return the additive inverse of each.
# Each positive becomes negatives, and the negatives become positives.

# invert([1,2,3,4,5]) => [-1,-2,-3,-4,-5]
# invert([1,-2,3,-4,5]) => [-1,2,-3,4,-5]
# invert([]) => []

# You can assume that all values are integers. Do not mutate the input array/list.

def invert(list)
  list.map(&:-@)
end

p invert([1, 2, 3, 4, 5])

describe '#invert' do
  it 'returns an new array with inverted values' do
    expect(invert([1, 2, 3, 4, 5])).to match_array([-1, -2, -3, -4, -5])
  end
end
