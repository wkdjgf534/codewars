# frozen_string_literal: true

require 'rspec'

# Create a method map that accepts a list and a block, runs the block for each item in the list,
# and returns a new array with the block return values.

# If you need help, here's a reference:

# http://www.rubycuts.com/enum-map

def map(list, &block)
  list.map(&block)
end

p map([3, 5, 8, 13]) { |el| el }

describe '#map' do
  it 'returns the same array' do
    expect(map([3, 5, 8, 13]) { |el| el }).to match_array([3, 5, 8, 13])
  end
end
