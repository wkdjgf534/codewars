# frozen_string_literal: true

require 'rspec'

# You are going to be given a word. Your job is to return the middle character of the word.
# If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

# Examples:

# get_middle('test') => 'es'

# get_middle('testing') => 't'

# get_middle('middle') => 'dd'

# get_middle('a') => 'A'

# Input

# A word (string) of length 0 < str < 1000 (In javascript you may get slightly more than 1000
# in some test cases due to an error in the test cases). You do not need to test for this.
# This is only here to tell you that you do not need to worry about your solution timing out.

# Output

# The middle character(s) of the word represented as a string.

# A good variant from Codewars
# def get_middle(string)
#   string[(string.size - 1) / 2..string.size / 2]
# end

def get_middle(string)
  middle_char = string.length / 2
  string.length.even? ? string[middle_char - 1..middle_char] : string[middle_char]
end

p get_middle('test')

describe '#get_middle' do
  it 'returns letters \'es\' for the word test' do
    expect(get_middle('test')).to eq('es')
  end

  it 'returns the letter \'t\' for the word testing' do
    expect(get_middle('testing')).to eq('t')
  end
end
