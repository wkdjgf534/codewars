# frozen_string_literal: true

require 'rspec'

# Task

# Reversing an array can be a tough task, especially for a novice programmer.
# Mary just started coding, so she would like to start with something basic at first.
# Instead of reversing the array entirely, she wants to swap just its first and last elements.

# Given an array arr, swap its first and last elements and return the resulting array.

# Example

# For arr = [1, 2, 3, 4, 5], the output should be [5, 2, 3, 4, 1]

# Input/Output

# [input] integer array arr
# Constraints: 0 ≤ arr.length ≤ 50, -1000 ≤ arr[i] ≤ 1000
# [output] an integer array
# Array arr with its first and its last elements swapped.

# def first_reverse_try(arr)
#   return arr if arr.empty?
#   # pop - http://ruby-doc.org/core-2.5.1/Array.html#method-i-pop
#   # Removes the last element from self and returns it, or nil if the array is empty.
#   # a = [ 'a', 'b', 'c', 'd' ]
#   # a.pop # => 'd'

#   # rotate - http://ruby-doc.org/core-2.5.1/Array.html#method-i-rotate
#   # Returns a new array by rotating self so that the element at count is the first element of the new array.
#   # a = [ 'a', 'b', 'c', 'd' ]
#   # a.rotate => ['b', 'c', 'd', 'a']
#   [arr.pop] + arr.rotate
# end

def first_reverse_try(array)
  return [] if array.empty? || array.nil?
  array[0], array[-1] = array[-1], array[0]
  array
end

p first_reverse_try([1, 3, 5])

describe '#first_reverse_try' do
  it 'Swaps two elements of an array' do
    expect(first_reverse_try([1, 2, 3])).to match_array([3, 2, 1])
  end

  it 'returns an empty array if input an empty array' do
    expect(first_reverse_try([])).to match_array([])
  end
end
