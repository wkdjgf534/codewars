# frozen_string_literal: true

require 'rspec'

# Welcome.
# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
# 'a' = 1, 'b' = 2, etc.
# Example

# alphabet_position('The sunset sets at twelve o' clock.') =>
# '20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11'

# A good solution from codewars
#def alphabet_position(text)
#  # Delete everything but letters from the string
#  only_letters = text.delete('^a-zA-Z').downcase

#  # Convert each letter to byte position
#  # Note: byte positions are sequential - subtract 96 from
#  # each value and you get their position in the alphabet

#  # https://ruby-doc.org/core-2.7.1/String.html#method-i-bytes
#  # Returns an array of bytes in str. This is a shorthand for str.each_byte.to_a.
#  byte_value = only_letters.bytes
#  byte_value.map { |ltr| ltr - 96 }.join(' ')
#end

ALPHABET_HASH = Hash[('a'..'z').zip('1'..'26')]

def alphabet_position(text)
  converted_string = []
  text.downcase.chars.each { |s| converted_string << ALPHABET_HASH[s] }
  converted_string.compact.join(' ')
end

p alphabet_position('This is a string')

describe '#alphabet_position' do
  it 'returns a string of numbers' do
    expect(alphabet_position('This is a string')).to eq('20 8 9 19 9 19 1 19 20 18 9 14 7')
  end

  it 'returns an empty string' do
    expect(alphabet_position('')).to eq('')
  end
end
