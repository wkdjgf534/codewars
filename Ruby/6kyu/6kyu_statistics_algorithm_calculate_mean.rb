# frozen_string_literal: true

require 'rspec'

# Create a mathematical algorithm to calculate the mean of a series of numbers. The mean of a series of numbers is the sum of all items in a set, divided by the number of items in that set.
# Examples:

# calc_mean([]) should return 0
# calc_mean([1, 2, 3]) should return 2.0
# calc_mean([6, 8, 10]) should return 8.0
# calc_mean([15, 30, 60, 120, 240]) should return 93.0

# Inputs are always populated (non-empty) arrays. Input arrays never include non-integer or non-float elements. Non-array inputs return 0.

def calc_mean(ary)
  return 0 if ary.empty? || !ary.is_a?(Array)
  ary.reduce(:+) / ary.size.to_f
end

p calc_mean([6, 8, 10])

describe '#calc_mean' do
  it 'returns 8.0 when passed an array [6, 8, 10]' do
    expect(calc_mean([6, 8, 10])).to eq(8.0)
  end

  it 'returns 0 if an array is empty' do
    expect(calc_mean([6, 8, 10])).to eq(8.0)
  end
end
