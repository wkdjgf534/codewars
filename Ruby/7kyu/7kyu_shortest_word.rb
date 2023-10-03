# frozen_string_literal: true

require 'rspec'

# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

# The best practice
# def find_short(string)
#   string.split.map(&:size).min
# end

def find_short(string)
  # http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-min_by
  # a = %w[albatross dog horse]
  # a.min_by { |x| x.length }   #=> "dog"
  string.split(' ').min_by(&:length).size
end

p find_short('hello World again test')

describe '#find_short' do
  it 'return the shortest word \'test\'' do
    expect(find_short('Hello World again test')).to eq(4)
  end
end
