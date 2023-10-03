# frozen_string_literal: true

require 'rspec'

# Write a function that flattens an Array of Array objects into a flat Array.
# Your function must only do one level of flattening.

# flatten [1, 2, 3] => [1, 2, 3]
# flatten [[1, 2, 3],['a', 'b', 'c'],[1, 2, 3]] => [1, 2, 3, 'a', 'b', 'c', 1, 2, 3]
# flatten [[[1, 2, 3]]] => [[1, 2, 3]]

# Another solution from Codewars
# def flatten(array)
#   array.flat_map { |arr| arr }
# end

def flatten(array)
  # flatten - http://ruby-doc.org/core-2.5.1/Array.html#method-i-flatten
  # a = [ 1, 2, [3, [4, 5] ] ]
  # a.flatten(1) => [1, 2, 3, [4, 5]]
  array.flatten(1)
end

p flatten([[[1, 2, 3]]])

describe '#flatten' do
  it 'flattens an array only once' do
    expect(flatten([[[1, 2, 3]]])).to match_array([[1, 2, 3]])
  end
end
