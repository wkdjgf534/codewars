# frozen_string_literal: true

require 'rspec'

# Find the number with the most digits.
# If two numbers in the argument array have the same number of digits, return the first one in the array.

# The best solution from Codewars
# def find_longest(arr)
#   arr.max_by { |num| num.to_s.size }
# end

def find_longest(arr)
  result = arr.map(&:to_s).group_by(&:size)
  result.values_at(result.keys.max).flatten.first.to_i
end

p find_longest([1, 10, 100, 1000, 10_000])

describe '#find_longest' do
  it 'returns the longest number' do
    expect(find_longest([1, 10, 100])).to eq(100)
  end
end
