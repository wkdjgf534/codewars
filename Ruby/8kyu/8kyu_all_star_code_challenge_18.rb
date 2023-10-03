# frozen_string_literal: true

require 'rspec'

# This Kata is intended as a small challenge for my students

# All Star Code Challenge #18

# Create a function called that accepts 2 string arguments and returns an integer of the count of occurrences
# the 2nd argument is found in the first one.

# If no occurrences can be found, a count of 0 should be returned.

# str_count('Hello', 'o') => 1
# str_count('Hello', 'l') => 2
# str_count('', 'z')      => 0

def str_count(word, letter)
  word.count(letter)
end

p str_count('hello', 'z')

describe '#string_count' do
  it 'returns an index of a letter in the string' do
    expect(str_count('Hello', 'e')).to eq(1)
  end

  it 'returns a zero if a letter will not find in a string' do
    expect(str_count('', 'e')).to eq(0)
  end
end
