# frozen_string_literal: true

require 'rspec'

# An anagram is the result of rearranging the letters of a word to produce a new word.
# Note: anagrams are case insensitive

# Complete the function to return true if the two arguments given are anagrams of theeach other;
# return false otherwise.

# Examples
# 'foefet' is an anagram of 'toffee'
# 'Buckethead' is an anagram of 'DeathCubeK'

def anagram?(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

p anagram?('Creative', 'Reactive')

describe '#anagram?' do
  it 'returns true' do
    expect(anagram?('Creative', 'Reactive')).to be_truthy
  end

  it 'returns false' do
    expect(anagram?('apple', 'pale')).to be_falsey
  end
end
