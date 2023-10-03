# frozen_string_literal: true

require 'rspec'

# Summation

# Write a program that finds the summation of every number between 1 and num.
# The number will always be a positive integer greater than 0.

# For example:

# summation(2) => 3
# summation(8) => 36

def summation(num)
  (1..num).sum
end

p summation(8)

describe '#summation' do
  it 'returns sum of numbers in the range' do
    expect(summation(8)).to eq(36)
  end
end
