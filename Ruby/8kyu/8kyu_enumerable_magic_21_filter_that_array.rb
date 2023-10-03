# frozen_string_literal: true

require 'rspec'

# Create a method select that accepts a list and a block, and returns a new array
# of elements for which the given block returns true.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-select

def select_method(list, &block)
  list.select(&block)
end

p select_method([0, 1, 2, 3, 5, 8, 13]) { |n| n.even? }

describe '#select_method' do
  it 'returns a new array with even numbers' do
    expect(select_method([0, 1, 2, 3, 5, 8, 13]) { |n| n.even? }).to match_array([0, 2, 8])
  end
end
