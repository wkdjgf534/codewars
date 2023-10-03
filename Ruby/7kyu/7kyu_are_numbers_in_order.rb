# frozen_string_literal: true

require 'rspec'

# Are the numbers in order?
# In this Kata, your function receives an array of integers as input. Your task is to determine
# whether the numbers are in ascending order. An array is said to be in ascending order if there
# are no two adjacent integers where the left integer exceeds the right integer in value.

# For the purposes of this Kata, you may assume that all inputs are valid, i.e. non-empty
# arrays containing only integers.

# Note that an array of 1 integer is automatically considered to be sorted in ascending order since all
# (zero) adjacent pairs of integers satisfy the condition that the left integer does not exceed the
# right integer in value. An empty list is considered a degenerate case and therefore will not be tested
# in this Kata - feel free to raise an Issue if you see such a list being tested.

# For example:

# is_asc_order([1,2,4,7,19]) => returns True
# is_asc_order([1,2,3,4,5]) => returns True
# is_asc_order([1,6,10,18,2,4,20]) => returns False
# is_asc_order([9,8,7,6,5,4,3,2,1]) => returns False because the numbers are in DESCENDING order

# N.B. If your solution passes all fixed tests but fails at the random tests,
# make sure you aren't mutating the input array.

def asc_order?(arr)
  arr == arr.sort
end

p asc_order?([1, 2, 4, 7, 19])

describe '#asc_order?' do
  it 'returns true if an array contains ascending column of numbers' do
    expect(asc_order?([1, 2, 4, 7, 19])).to be_truthy
  end

  it 'returns true if an array contains only one element' do
    expect(asc_order?([222])).to be_truthy
  end

  it 'returns false if an array doen\'t contains ascending column of numbers' do
    expect(asc_order?([1, 6, 10, 18, 2, 4, 20])).to be_falsey
  end
end
