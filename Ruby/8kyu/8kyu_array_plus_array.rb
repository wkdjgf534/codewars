# frozen_string_literal: true

require 'rspec'

# I'm new to coding and now I want to get the sum of two arrays...actually the sum of all their elements.
# I'll appreciate for your help.

# P.S. Each array includes only integer numbers. Output is a number too.

def array_plus_array(array1, array2)
  (array1 + array2).sum
end

p array_plus_array([-1, -2, -3], [-4, -5, -6]) # -21

describe '#array_plus_array' do
  it 'returns the sum of elements' do
    expect(array_plus_array([1, 2, 3], [4, 5, 6])).to eq(21)
  end
end
