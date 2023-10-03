# frozen_string_literal: true

require 'rspec'

# Complete the solution so that it returns true if the first argument(string) passed
# in ends with the 2nd argument (also a string).

# Examples:

# solution('abc', 'bc') => true
# solution('abc', 'd') => false

# A good solition form Codewars
# def solution?(str, ending)
#   str[-ending.size..-1] == ending
# end

def solution?(str, ending)
  # end_with? - http://ruby-doc.org/core-2.5.1/String.html#method-i-end_with-3F
  # Returns true if str ends with one of the suffixes given.
  str.end_with?(ending)
end

p solution?('abc', 'bc')

describe '#solition?' do
  it 'returns true if two strings have similar letters' do
    expect(solution?('abc', 'bc')).to be_truthy
  end

  it 'returns false if two strings don\'t have similar letters' do
    expect(solution?('abc', 'd')).to be_falsey
  end
end
