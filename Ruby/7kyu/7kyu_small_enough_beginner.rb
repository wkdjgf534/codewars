# frozen_string_literal: true

require 'rspec'

# You will be given an array and a limit value.
# You must check that all values in the array are below or equal to the limit value.
# If they are, return true. Else, return false.
# You can assume all values in the array are numbers.

def small_enough(array, limit)
  array.max <= limit
end

p small_enough([23, 100, 101, 102], 66)

describe '#small enough' do
  it 'returns true if limit value is greater than values of an array' do
    expect(small_enough([66, 101], 200)).to be_truthy
  end

  it 'returns false if limit value is less or equal than values of an array' do
    expect(small_enough([23, 100, 101, 102], 66)).to be_falsey
  end
end
