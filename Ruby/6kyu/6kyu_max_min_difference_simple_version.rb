# frozen_string_literal: true

require 'rspec'

# Description:

# Given two array of integers(arr1,arr2). Your task is going to find a pair of numbers(an element in arr1,
# and another element in arr2), their difference is as big as possible(absolute value); Again, you should to
# find a pair of numbers, their difference is as small as possible. Return the maximum and minimum difference
# values by an array: [ max difference, min difference ]

# For example:

# Given arr1 = [3,10,5], arr2 = [20,7,15,8]
# should return [17,2] because 20 - 3 = 17, 10 - 8 = 2

# Note:
# arr1 and arr2 contains only integers(positive, negative or 0);
# arr1 and arr2 may have different lengths, they always has at least one element;
# All inputs are valid.
# This is a simple version, if you want some challenges, try the challenge version.

# The best solution from Codewars
# def max_and_min(arr1, arr2)
#   # product - http://ruby-doc.org/core-2.5.1/Array.html#method-i-product
#   # Returns an array of all combinations of elements from all arrays.
#   # [1, 2, 3].product([4, 5]) => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
#   arr1.product(arr2).map { |a, b| (a - b).abs }.minmax.reverse
# end

def max_and_min(arr1, arr2)
  diff = []
  arr1.each do |i|
    arr2.each { |j| diff << (i - j).abs }
  end
  diff.minmax.reverse
end

p max_and_min([3, 10, 5], [20, 7, 15, 8])

describe '#max_and_min' do
  it 'returns a new array with two values' do
    expect(max_and_min([3, 10, 5], [20, 7, 15, 8])).to eq([17, 2])
  end
end
