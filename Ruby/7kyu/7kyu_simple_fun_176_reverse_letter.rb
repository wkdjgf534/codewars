# frozen_string_literal: true

require 'rspec'

# Task

# Given a string str, reverse it omitting all non-alphabetic characters.
# Example

# For reverse_letter('krishan'), => 'nahsirk'.
# For reverse_letter('ultr53o?n'), => 'nortlu'.

# Input/Output
# [input] string str
# A string consists of lowercase latin letters, digits and symbols.
# [output] a string

def reverse_letter(string)
  string.gsub(/[^a-z]/i, '').reverse
end

p reverse_letter('#45k5ris?h  an')

describe '#reverse_letter' do
  it 'removes all non-letter symbols and number from a string' do
    expect(reverse_letter('#45k5ris?h  an')).to eq('nahsirk')
  end
end
