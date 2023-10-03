# frozen_string_literal: true

require 'rspec'

# Given an array of integers, return a new array with each value doubled.

# For example:

# [1, 2, 3] => [2, 4, 6]
# For the beginner, try to use the map method - it comes in very handy quite a lot so is a good one to know.

def maps(array)
  array.map { |x| x + x }
end

p maps([1, 2, 3])

describe '#maps' do
  it 'returns the correct century fom 1705' do
    expect(maps([1, 2, 3])).to match_array([2, 4, 6])
  end
end
