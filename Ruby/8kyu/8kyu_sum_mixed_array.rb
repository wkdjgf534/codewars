# frozen_string_literal: true

require 'rspec'

# Given an array of integers as strings and numbers, return the sum of the array
# values as if all were numbers.
# Return your answer as a number.

# The best solution from Codewars
# def sum_mix(x)
#   x.sum(&:to_i)
# end

def sum_mix(x)
  x.map(&:to_i).sum
end

p sum_mix([9, 3, '7', '3'])

describe '#sum_mix' do
  it 'returns the sum of numbers in an array' do
    expect(sum_mix([9, 3, '7', '3'])).to eq(22)
  end
end
