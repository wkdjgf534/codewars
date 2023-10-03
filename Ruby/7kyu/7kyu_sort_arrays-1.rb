# frozen_string_literal: true

require 'rspec'

# Just a simple sorting usage. Create a function that returns the elements of the input-array in a sorted manner.

def sort_me(names)
  names.sort
end

p sort_me(%w[Peter Alice Patric Eugene])

describe '#sort_me' do
  it 'returns a new sorted array with names' do
    unsorted_array = %w[Peter Alice Patric Eugene]
    sorted_array = %w[Alice Eugene Patric Peter]
    expect(sort_me(unsorted_array)).to match_array(sorted_array)
  end
end
