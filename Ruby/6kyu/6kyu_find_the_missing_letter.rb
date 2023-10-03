# frozen_string_literal: true

require 'rspec'

# Find the missing letter
# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing
# letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing.
# The length of the array will always be at least 2. The array will always contain letters in only one case.

# Example:

# ['a', 'b', 'c', 'd', 'f'] -> 'e'
# ['O','Q','R','S'] -> 'P'

# Use the English alphabet with 26 letters!

# The best solution from Codewars
# def find_missing_letter(arr)
#   ((arr.first..arr.last).to_a - arr).first
# end

def find_missing_letter(arr)
  range = arr.minmax
  ((range[0]..range[-1]).to_a - arr).first
end

p find_missing_letter(%w[a b c d f])

describe '#count_bits' do
  it 'returns the missing letter' do
    expect(find_missing_letter(%w[a b c d f])).to eq('e')
  end

  it 'returns nil' do
    expect(find_missing_letter(%w[a b c d])).to be_nil
  end
end
