# frozen_string_literal: true

require 'rspec'

# Your task is to make two functions, max and min (maximum and minimum in PHP) that take a(n) array/vector
# of integers list as input and outputs, respectively, the largest and lowest number in that array/vector.

#Examples

# max([4,6,2,1,9,63,-134,566]) => 566
# min([-52, 56, 30, 29, -54, 0, -110]) => -110
# max([5]) => 5
# min([42, 54, 65, 87, 0]) => 0

# Notes

# You may consider that there will not be any empty arrays/vectors.

def min(list)
  list.min
end

def max(list)
  list.max
end

p max([4, 6, 2, 1, 9, 63, -134, 566])
p min([-52, 56, 30, 29, -54, 0, -110])

describe '#min' do
  it 'returns the min value from an array' do
    expect(min([-52, 56, 30, 29, -54, 0, -110])).to eq(-110)
  end
end

describe '#max' do
  it 'returns the max value from an array' do
    expect(max([4, 6, 2, 1, 9, 63, -134, 566])).to eq(566)
  end
end
