# frozen_string_literal: true

require 'rspec'

# You will be given an vector of string(s). You must sort it alphabetically (case-sensitive!!)
# and then return the first value.
# The returned value must be a string, and have "***" between each of its letters.
# You should not remove or add elements from/to the array.

def two_sort(string)
  string.min.chars.join('***')
end

array = %w[test Lets all go on holiday somewhere very cold]
p two_sort(array)

describe '#two_sort' do
  it 'returns a word from an array with starts' do
    expect(two_sort(array)).to eq('L***e***t***s')
  end
end
