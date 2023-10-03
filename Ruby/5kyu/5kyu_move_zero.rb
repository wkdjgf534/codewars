# frozen_string_literal: true

require 'rspec'

# Write an algorithm that takes an array and moves all of the zeros to the end,
# preserving the order of the other elements.

# move_zeros([1,2,0,1,0,1,0,3,0,1]) # => [1,2,1,1,3,1,0,0,0,0]

def move_zeros(arr)
  arr.partition { |value| value != 0 }.inject(:+)
end

p move_zeros([1, 2, 0, 1, 0, 1, 0, 3, 0, 1])

describe '#move_zeros' do
  it 'returns sorted array example1' do
    expect(move_zeros([1, 2, 0, 1, 0, 1, 0, 3, 0, 1])).to eq([1, 2, 1, 1, 3, 1, 0, 0, 0, 0])
  end

  it 'returns sorted array example2' do
    expect(move_zeros(['a', [], 0, 2, 3, 'f', '0'])).to eq(['a', [], 2, 3, 'f', '0', 0])
  end
end
