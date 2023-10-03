# frozen_string_literal: true

require 'rspec'

# Complete the function to find the count of the most frequent item of an array.
#  You can assume that input is an array of integers. For an empty array return 0
# Example

# input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3], ouptut: 5
# The most frequent number in the array is -1 and it occurs 5 times.

# The best two solutions from Codewars
# def most_frequent_item_count(collection)
#   collection.count(collection.max_by{ |x| collection.count(x) })
# end

# def most_frequent_item_count(collection)
#   collection.uniq.map{ |v| collection.count v }.max || 0
# end

def most_frequent_item_count(collection)
  collection.empty? ? 0 : collection.group_by(&:itself).map { |_k, v| v.size }.max
end

p most_frequent_item_count([3, -1, -1, 3, -1, 0])

describe '#most_frequent_item_count' do
  it 'returns the number of the most freqient values in a collection' do
    expect(most_frequent_item_count([3, -1, -1])).to eq(2)
  end

  it 'returns a zero if a collection is empty' do
    expect(most_frequent_item_count([3, -1, -1])).to eq(2)
  end
end
