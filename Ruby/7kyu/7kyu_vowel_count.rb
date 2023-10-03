# frozen_string_literal: true

require 'rspec'

# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, u as vowels for this Kata (but not y).
# The input string will only consist of lower case letters and/or spaces.

def get_count(input_str) = input_str.downcase.count('aeoiu')

p get_count('tEst rEst')

describe '#longest' do
  it 'returns an amount of vowel from a string' do
    expect(get_count('tEst rEst')).to eq(2)
  end

  it 'returns zero for an empty string' do
    expect(get_count('')).to eq(0)
  end
end
