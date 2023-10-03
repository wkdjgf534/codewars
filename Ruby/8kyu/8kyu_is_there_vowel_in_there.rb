# frozen_string_literal: true

require 'rspec'

# Given an array of numbers, check if any of the numbers are the character codes for lower case vowels (a, e, i, o, u).
# If they are, change the array value to a string of that vowel.
# Return the resulting array.

test_array = [118, 117, 120, 121, 117, 98, 122, 97, 120, 106, 104, 116, 113, 114, 113, 120, 106]

def contain_vowel(arr)
  arr.map { |num| num.chr.match?(/[aeiou]/) ? num.chr : num }
end

p contain_vowel(test_array)

describe '#litres' do
  it 'replaces numbers with lower case letters' do
    expect(contain_vowel(test_array)).to match_array(
      [118, 'u', 120, 121, 'u', 98, 122, 'a', 120, 106, 104, 116, 113, 114, 113, 120, 106]
    )
  end
end
