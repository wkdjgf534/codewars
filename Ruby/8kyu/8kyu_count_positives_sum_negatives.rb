# frozen_string_literal: true

require 'rspec'

# Given an array of integers.

# Return an array, where the first element is the count of positives numbers
# and the second element is sum of negative numbers.

# If the input array is empty or null, return an empty array:

#    C#/Java: new int[] {} / new int[0];
#    C++: std::vector<int>();
#    JavaScript/CoffeeScript/TypeScript/PHP/Haskell: [];
#    Rust: Vec::<i32>::new();

# ATTENTION!

# The passed array should NOT be changed. Read more here.

# For example:

# count_positives_sum_negatives [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] => [10, -65].

# Yet another good solution from Codewars
# def count_positives_sum_negatives(array)
#   array.empty? ? [] : [array.count(&:positive?), array.select(&:negative?).reduce(0, :+)]
# end

def count_positives_sum_negatives(array)
  # partition - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-partition
  # (1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
  return [] if array.empty?
  positives, negatives = array.partition(&:positive?)
  [positives.count, negatives.sum]
end

p count_positives_sum_negatives([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14])

describe '#count_positives_sum_negatives' do
  it 'returns a new array with a size of positives elements and a sum of negative elements' do
    expect(count_positives_sum_negatives([1, 2, -5, -4])).to match_array([2, -9])
  end

  it 'returns an empty array if an original array is empty too' do
    expect(count_positives_sum_negatives([])).to match_array([])
  end
end
