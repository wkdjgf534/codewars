# frozen_string_literal: true

require 'rspec'

# Task

# Given a list of digits, return the smallest number that could be formed from these digits,
# using the digits only once ( ignore duplicates).

# Notes :
# - Only positive integers will be passed to the function (> 0 ), no negatives or zeros.

# Input >> Output Examples

# 1 - min_value ([1, 3, 1])  => (13)

# Explanation:

# (13) is the minimum number could be formed from [1, 3, 1] , Without duplications

# 2 - min_value([5, 7, 5, 9, 7])  => (579)

# Explanation:

# (579) is the minimum number could be formed from {5, 7, 5, 9, 7} , Without duplications

def min_value(digits)
  digits.uniq.sort.join.to_i
end

p min_value([2, 1, 3, 1, 4, 2])

describe '#minimum_value' do
  it 'transforms an array of numbers into the minimum number' do
    expect(min_value([1, 2, 3, 1, 2])).to eq(123)
  end
end
