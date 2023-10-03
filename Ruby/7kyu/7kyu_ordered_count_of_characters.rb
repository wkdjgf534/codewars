# frozen_string_literal: true

require 'rspec'

# Count the number of occurrences of each character and return it as a list of tuples in order of appearance.

# Example:

# ordered_count("abracadabra") == [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

# The best solution from Codewars
# def ordered_count(str)
#   s = str.chars.uniq
#   s.map { |x| [x, str.chars.count(x)] }
# end

# https://stackoverflow.com/questions/16124735/letter-count-in-a-sentence-using-ruby
def ordered_count(string)
  # group_by - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-group_by
  # Groups the collection by result of the block. Returns a hash where the keys are the evaluated
  # result from the block and the values are arrays of elements in the collection that correspond to the key.
  # (1..6).group_by { |i| i%3 } => {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}

  # chr - http://ruby-doc.org/core-2.5.1/String.html#method-i-chr
  # Returns a one-character string at the beginning of the string.
  string.chars.group_by(&:chr).map { |l, amount| [l, amount.size] }
end

p ordered_count('abracadabra')

describe '#ordered_count' do
  it 'returns a two-dimensional array with counted letters' do
    expect(ordered_count('abracadabra')).to match_array([['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]])
  end
end
