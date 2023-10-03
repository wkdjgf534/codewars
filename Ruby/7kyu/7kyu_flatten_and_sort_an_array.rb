# frozen_string_literal: true

require 'rspec'

# Challenge:

# Given a two-dimensional array of integers, return the flattened version of the array with all the
# integers in the sorted (ascending) order.

# Example:

# flatten_and_sort[[3, 2, 1], [4, 6, 5], [], [9, 7, 8]] => [1, 2, 3, 4, 5, 6, 7, 8, 9].

# Addendum:

# Please, keep in mind, that JavaScript is by default sorting objects alphabetically. For more information, please consult:

def flatten_and_sort(array)
  array.flatten.sort
end

p flatten_and_sort([[], [10, 5, 1], [8, 4, 2]])

describe '#flatten_and_sort' do
  it 'merges arrays into one and sort it' do
    expect(flatten_and_sort([[], [10, 5, 1]])).to eq([1, 5, 10])
  end
end
