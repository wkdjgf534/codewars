# frozen_string_literal: true

require 'rspec'

# Given a string, capitalize the letters that occupy even indexes and odd indexes separately,
# and return as shown below. Index 0 will be considered even.

# For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

# The input will be a lowercase string with no spaces.

# Good luck!

# The best solution from Codewars
# def capitalize(str)
#   result = str.gsub /.{1,2}/, &:capitalize
#   [result, result.swapcase]
# end

def capitalize(str)
  result = str.chars.map.with_index { |char, index| index.even? ? char.capitalize : char }.join
  [result, result.swapcase]
end

p capitalize('')

describe '#capitalize' do
  it 'returns true' do
    expect(capitalize('string')).to match_array(['StRiNg', 'sTrInG'])
  end

  it 'returns an array of empty strings' do
    expect(capitalize('')).to match_array(['',''])
  end
end
