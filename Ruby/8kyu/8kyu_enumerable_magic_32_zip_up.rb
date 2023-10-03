# frozen_string_literal: true

require 'rspec'

# Create a method zip that accepts two lists of the same length, and combines their
#  result into a single array, like so:

# first = ['a', 'c', 'e']
# second = ['b', 'd', 'f']
# zip(first, second) => ['a', 'b', 'c', 'd', 'e', 'f']

# If you need help, here's a reference:
# http://www.rubycuts.com/enum-zip/

def zip(first, second)
  first.zip(second).flatten
end

p zip([1, 2, 3], %w[a b c])

describe '#zip' do
  it 'unites two arrays in one' do
    expect(zip([1, 2, 3], %w[a b c])).to match_array([1, 'a', 2, 'b', 3, 'c'])
  end
end
