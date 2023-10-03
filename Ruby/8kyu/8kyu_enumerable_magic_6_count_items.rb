# frozen_string_literal: true

require 'rspec'

# Create a method count that accepts a list and a block, and returns the total number
# of items for which the block returns true.

# If you need help, here's a reference: http://www.rubycuts.com/enum-count

list = [-3, 0, 1, 2, 3, 5, 8, 13]

def count(list, &block)
  list.count(&block)
end

p count(list) { |item| item == 13 }

describe '#count' do
  it 'returns 1 if an array contains 13' do
    expect(count(list) { |item| item == 13 }).to eq(1)
  end
end
