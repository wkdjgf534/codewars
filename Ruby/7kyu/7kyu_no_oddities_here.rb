# frozen_string_literal: true

require 'rspec'

# Write a small function that returns the values of an array that are not odd.

# All values in the array will be integers. Return the good values in the order they are given.

def no_odds(values)
  values.select(&:even?)
end

p no_odds([1, 2, 4, 6, 7, 8])

describe '#no_odds' do
  it 'returns a new array with even numbers' do
    expect(no_odds([1, 2, 3, 4, 6, 7, 8])).to match_array([2, 4, 6, 8])
  end
end
