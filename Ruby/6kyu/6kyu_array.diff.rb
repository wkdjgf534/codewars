# frozen_string_literal: true

require 'rspec'

# Your goal in this kata is to implement a difference function, which subtracts
# one list from another and returns the result.
# It should remove all values from list a, which are present in list b.

# array_diff([1,2],[1]) == [2]

def array_diff(a, b)
  a - b
end

p array_diff([1, 2], [1])

describe '#array_diff' do
  it 'subtractions a one array from another' do
    expect(array_diff([1, 2], [1])).to match_array([2])
  end
end
