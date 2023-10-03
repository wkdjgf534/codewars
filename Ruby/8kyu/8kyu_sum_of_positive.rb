# frozen_string_literal: true

require 'rspec'

# You get an array of numbers, return the sum of all of the positives ones.

# Example [1,-4,7,12] => 1 + 7 + 12 = 20

# Note: if there is nothing to sum, the sum is default to 0.

# The good solution from Codewars
# def positive_sum(arr)
#   arr.inject(0) do |sum, value|
#     value > 0 ? sum += value : sum
#   end
# end

def positive_sum(arr) = arr.select(&:positive?).sum

p positive_sum([1, -2, 3, 4, 5])

describe '#positive_sum' do
  it 'returns the positive answer' do
    expect(positive_sum([1, -2, 3, 4, 5])).to eq(13)
  end

  it 'returns 0 when array is empty' do
    expect(positive_sum([])).to eq(0)
  end

  it 'returns 0 when all elements are negative' do
    expect(positive_sum([-1,-2,-3,-4,-5])).to eq(0)
  end
end
