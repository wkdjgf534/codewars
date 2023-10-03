# frozen_string_literal: true

require 'rspec'

# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

# It’s guaranteed that array contains at least 3 numbers.
# The tests contain some very huge arrays, so think about performance.

def find_uniq(arr)
  arr.tally.select { |key, value| return key if value == 1 }
end

p find_uniq([1, 1, 1, 2, 1, 1])

describe '#find_uniq' do
  it 'returns the unique value from an array' do
    expect(find_uniq([1, 1, 1, 2, 1, 1])).to eq(2)
  end
end
