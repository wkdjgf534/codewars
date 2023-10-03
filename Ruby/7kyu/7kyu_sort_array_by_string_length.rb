# frozen_string_literal: true

require 'rspec'

# Write a function that takes an array of strings as an argument and returns a sorted array
# containing the same strings, ordered from shortest to longest.

# For example, if this array were passed as an argument:
# %w[Telescopes Glasses Eyes Monocles]

# Your function would return the following array:
# %w[Eyes Glasses Monocles Telescopes]

# All of the strings in the array passed to your function will be different lengths, so you
# will not have to decide how to order multiple strings of the same length.

def sort_by_length(arr)
  arr.sort_by(&:length)
end

p sort_by_length(%w[i to beg life])

describe '#sort_by_length' do
  it 'returns a new array which is sorted by length' do
    expect(sort_by_length(%w[i beg to life])).to match_array(%w[i to beg life])
  end
end
