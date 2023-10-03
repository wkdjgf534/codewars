# frozen_string_literal: true

require 'rspec'

# In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

# Example:

# make_negative(1)  => -1
# make_negative(-5) => -5
# make_negative(0)  => 0

# Notes:
# The number can be negative already, in which case no change is required.
# Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.

def make_negative(num) = -num.abs

p make_negative(5)

describe '#make_negative' do
  it 'converts a positive number into a negative number' do
    expect(make_negative(5)).to eq(-5)
  end

  it 'does not convert a negative number into a negative number' do
    expect(make_negative(-5)).to eq(-5)
  end

  it 'does not work with zero' do
    expect(make_negative(0)).to eq(0)
  end
end
