# frozen_string_literal: true

require 'rspec'

# Define a function that removes duplicates from an array of numbers and returns it as a result.

# The order of the sequence has to stay the same.

# def distinct(sequence)
#   sequence & sequence
# end

def distinct(sequence)
  sequence.uniq
end

p distinct([1, 1, 2, 2, 3, 3, 4, 4])

describe '#distinct' do
  it 'returns an array without duplicates' do
    expect(distinct([1, 1, 2, 2, 3, 3, 4, 4])).to match_array([1, 2, 3, 4])
  end
end
