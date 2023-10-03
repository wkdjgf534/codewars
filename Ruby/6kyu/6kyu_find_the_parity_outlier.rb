# frozen_string_literal: true

require 'rspec'

# You are given an array (which will have a length of at least 3, but could be very large) containing integers.
# The array is either entirely comprised of odd integers or entirely comprised of even integers except
# for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
# Examples

# find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) => 11
# find_outlier([160, 3, 1719, 19, 11, 13, -21]) => 160

# The best solution
# def find_outlier(integers)
#   # partition - https://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-partition
#   # Returns two arrays, the first containing the elements of enum for which the
#   # block evaluates to true, the second containing the rest.
#   # (1..6).partition { |v| v.even? }  => [[2, 4, 6], [1, 3, 5]]

#   # find - https://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-find
#   # Passes each entry in enum to block. Returns the first for which block is not false.
#   # If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.
#   # (1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   => 35

#   # one - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-one-3F
#   # Passes each element of the collection to the given block. The method returns true if the block returns true
#   # exactly once. If the block is not given, one? will return true only if exactly one of the collection members is true
#   # %w{ant bear cat}.one? { |word| word.length == 4 }  => true
#   integers.partition(&:odd?).find(&:one?).first
# end

# Another goot solution from codewars
# def find_outlier(integers)
#   evens, odds = integers.partition(&:even?)
#   evens.size == 1 ? evens[0] : odds[0]
# end

def find_outlier(integers)
  integers.group_by(&:even?).min_by { |_key, value| value.size }.last.pop
end

p find_outlier([2, 4, 12, 43, 56])

describe '#find_outlier' do
  it 'returns a odd number from an array' do
    expect(find_outlier([2, 4, 12, 43, 56])).to eq(43)
  end
  it 'returns a even number from an array' do
    expect(find_outlier([3, 5, 7, 11, 13, 12])).to eq(12)
  end
end
