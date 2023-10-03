# frozen_string_literal: true

require 'rspec'

# An isogram is a word that has no repeating letters, consecutive or non-consecutive.
# Implement a function that determines whether a string that contains only letters is an isogram.
# Assume the empty string is an isogram. Ignore letter case.

# Example
# isogram?('Dermatoglyphics') => true
# isogram?('aba') => false
# isogram?("moOse') => false # -- ignore letter case

# def isogram?(str)
#   str.downcase.chars.uniq == str.downcase.chars
# end

def isogram?(str)
  # all? - http://ruby-doc.org/core-2.5.3/Enumerable.html#method-i-all-3F
  # Passes each element of the collection to the given block.
  # The method returns true if the block never returns false or nil.
  # [1, 2i, 3.14].all?(Numeric) => true
  # [nil, true, 99].all? => false
  ('a'..'z').all? { |c| str.downcase.count(c) <= 1 }
end

p isogram?('Dermatoglyphics')

describe '#isogram?' do
  it 'returns true if a string contains unique letters' do
    expect(isogram?('Dermatoglyphics')).to be_truthy
  end

  it 'returns false if a string does not contain unique letters  ' do
    expect(isogram?('moOse')).to be_falsey
  end
end
