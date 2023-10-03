# frozen_string_literal: true

require 'rspec'

# Given an array, find the int that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

# A good solution from Codewars
# def find_it(seq)
#   # detect - https://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-detect
#   # Passes each entry in enum to block. Returns the first for which block is not false.
#   # If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.
#   seq.detect { |n| seq.count(n).odd? }
# end

def find_it(seq)
  # itself - http://www.rubyguides.com/2017/10/7-powerful-ruby-methods/
  # https://www.youtube.com/watch?v=2zevygUebeo
  seq.group_by(&:itself).select { |_k, v| v.size.odd? }.keys.first
end

p find_it([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5])

describe '#find_it' do
  it 'returns a number which is repeated odd times in an array' do
    expect(find_it([1, 1, 10, 2, 2, 0, 0])).to eq(10)
  end
end
