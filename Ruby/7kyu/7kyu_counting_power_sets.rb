# frozen_string_literal: true

require 'rspec'

# In this kata, you must create a function powers/Powers that takes an array, and
# returns the number of subsets possible to create from that list. In other words,
# counts the power sets.

# For instance
# powers([1,2,3]) => 8

# ...due to...

# powers([1,2,3]) =>
# [[],
#  [1],
#  [2],
#  [3],
#  [1,2],
#  [2,3],
#  [1,3],
#  [1,2,3]]

# Your function should be able to count sets up to the size of 500, so watch out;
# pretty big numbers occur there!

# For comparison, my Haskell solution can compute the number of sets for an array
# of length 90 000 in less than a second, so be quick!

# You should treat each array passed as a set of unique values for this kata.

# Examples:
# powers([]) => 1
# powers([1]) => 2
# powers([1,2]) => 4
# powers([1,2,3]) => 8
# powers([1,2,3,4]) => 16

def powers(list)
  2**list.size
end

p powers([1, 2, 3, 4])

describe '#powers' do
  it '' do
    expect(powers([1, 2, 3, 4])).to eq(16)
  end
end
