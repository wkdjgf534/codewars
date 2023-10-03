# frozen_string_literal: true

require 'rspec'

# In this kata you will create a function that takes a list of non-negative integers
# and strings and returns a new list with the strings filtered out.
# Example

# filter_list([1, 2, 'a', 'b']) => [1,2]
# filter_list([1, 'a', 'b', 0, 15]) => [1,0,15]
# filter_list([1, 2, 'aasf', '1', '123', 123]) => [1,2,123]

# The best solution from Codewars
# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end

def filter_list(list)
  # http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-grep
  # (1..100).grep(38..44) => [38, 39, 40, 41, 42, 43, 44]
  list.grep(Numeric)
end

p filter_list([1, 2, 'a', 'b'])

describe '#filter list' do
  it 'filtered out all string from an array' do
    expect(filter_list([1, 2, 'aasf', '1', '123', 123])).to eq([1, 2, 123])
  end
end
