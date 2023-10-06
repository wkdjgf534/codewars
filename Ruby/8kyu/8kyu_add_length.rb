# frozen_string_literal: true

require 'rspec'

# What if we need the length of the words separated by a space to be added at the end of that same
# word and have it returned as an array?
# add_length('apple ban') => ["apple 5", "ban 3"]
# add_length('you will win') => ["you 3", "will 4", "win 3"]
# Your task is to write a function that takes a String and returns an Array/list with the length
# of each word added to each element.
# Note: String will have at least one element; words will always be separated by a space.

# The best solution from Codewars
# def add_length(str)
#   str.split.map { |word| "#{word} #{word.length}" }
# end

def add_length(str) = str.split.map { |elem| elem << " #{elem.size}" }

p add_length('you will win')

describe '#add_length' do
  it 'returns an array' do
    expect(add_length('you will win')).to match_array(['you 3', 'will 4', 'win 3'])
  end
end
