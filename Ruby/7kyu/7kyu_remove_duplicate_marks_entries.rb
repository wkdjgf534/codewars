# frozen_string_literal: true

require 'rspec'

# A database entry specialist goofed up and hence made duplicate entries of the marks obtained by a few students.
# You need to clean it up and make sure the data has only single entries per user

# Create a method that returns these values and while you are at it, sort it in increasing order of the score
# The input values can be nil or an array of arrays. The first element of the array is the username and the
# last element is the marks. Elements in the middle are just additional way of user identification.

# The names are case sensitive. 'a' and 'A' are different

# Example


# dataclean(nil)                       => nil

# dataclean([['a',5],['b',3],['a',5]]) => [['b',3],['a',5]]

# dataclean([['a',5],['a',5]])         => [['a',5]]

# dataclean([['a',2],['b',3],['a',2]]) => [['a',2],['b',3]]

# A robust and clean example from Codewars
# def dataclean(values)
#   values.uniq(&:first).sort_by(&:last) if values
# end

def dataclean(values)
  # sort_by - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-sort_by
  # %w{apple pear fig}.sort_by { |word| word.length } #=> ["fig", "pear", "apple"]
  return nil if values.nil?
  values.uniq { |element| element[0] }.sort_by { |a| a[1] }
end

p dataclean([['d', 5], ['d', 1], ['d', 2], ['d', 3], ['E', 1], ['C', 5]])

describe '#dataclean' do
  it 'removes duplictes and sort arrays corretly' do
    expect(dataclean([['a', 5], ['b', 8], ['a', 5]])).to eq([['a', 5], ['b', 8]])
  end

  it 'returns nil, if input data is nil' do
    expect(dataclean(nil)).to eq(nil)
  end
end
