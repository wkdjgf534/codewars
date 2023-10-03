# frozen_string_literal: true

require 'rspec'

# Given an array of digitals numbers, return a new array of length number containing
# the last even numbers from the original array (in the same order). The original
# array will be not empty and will contain at least "number" even numbers.

# For example:

# even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3) => [4, 6, 8]
# even_numbers([-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2) => [-8, 26]
# even_numbers([6, -25, 3, 7, 5, 5, 7, -3, 23], 1) => [6]

def even_numbers(arr, num)
  arr.select(&:even?).last(num)
end

p even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)

describe '#even_numbers' do
  it 'returns an array which contains even numbers' do
    expect(even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)).to match_array([4, 6, 8])
  end
end
