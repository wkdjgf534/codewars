# frozen_string_literal: true

require 'rspec'

# Create a method max that accepts a list and a block, and returns the item that is
# the maximum using the block as the comparator.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-max

def max(list, &block)
  list.max(&block)
end

p max([0, 12, 1, 5]) { |a, b| a <=> b }

describe '#max' do
  it 'returns the max value from an array' do
    expect(max([0, 12, 1, 5]) { |a, b| a <=> b}).to eq(12)
  end
end
