# frozen_string_literal: true

require 'rspec'

# Create a method max that accepts a list and a block, and returns the item that is
# the maximum using the block as the comparator.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-max

def reduce(list, &block)
  list.reduce(&block)
end

p reduce([0, 1, 2, 3, 5, 8, 13]) { |sum, number| sum + number }

describe '#reduce' do
  it 'returns the sum of values from an array' do
    expect(reduce([0, 1, 2, 3, 5, 8, 13]) { |a, b| a + b }).to eq(32)
  end
end
