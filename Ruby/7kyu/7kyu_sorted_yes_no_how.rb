# frozen_string_literal: true

require 'rspec'

# Complete the method which accepts an array of integers, and returns one of the following:
# 'yes, ascending' - if the numbers in the array are sorted in an ascending order
# 'yes, descending' - if the numbers in the array are sorted in a descending order
# 'no' - otherwise

# You can assume the array will always be valid, and there will always be one correct answer.

def sorted_and_how(arr)
  return 'yes, descending' if arr == arr.sort.reverse
  return 'yes, ascending' if arr == arr.sort
  'no'
end

p sorted_and_how([3, 4])

describe '#sorted_and_how' do
  it "returns message 'yes, descending'" do
    expect(sorted_and_how([3, 4])).to eq('yes, ascending')
  end

  it "returns message 'yes, ascending'" do
    expect(sorted_and_how([4, 3])).to eq('yes, descending')
  end

  it "returns message 'no'" do
    expect(sorted_and_how([341, 1, 233])).to eq('no')
  end
end
