# frozen_string_literal: true

require 'rspec'

# Your task is to write function findSum.
# Upto and including n, this function will return the sum of all multiples of 3 and 5.
# For example:
# findSum(5) should return 8 (3 + 5)
# findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)

def find(num)
  (0..num).select { |n| (n % 3).zero? || (n % 5).zero? }.reduce(:+)
end

p find(10)

describe '#find' do
  it 'returns a sum of all elements in range' do
    expect(find(10)).to eq(33)
  end

  it 'returns zero' do
    expect(find(0)).to eq(0)
  end
end
