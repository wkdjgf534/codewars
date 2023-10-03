# frozen_string_literal: true

require 'rspec'

# Given an array of integers your solution should find the smallest integer.

# For example:

# Given [34, 15, 88, 2] your solution will return 2
# Given [34, -345, -1, 100] your solution will return -345

# You can assume, for the purpose of this kata, that the supplied array will not be empty.

def find_smallest_int(arr) = arr.min

p find_smallest_int([78, 56, -2, 12, -8])

describe '#find_smallest_int' do
  it 'returns the positive answer' do
    expect(find_smallest_int([78, 56, -2, 12, -8])).to eq(-8)
  end
end
