# frozen_string_literal: true

require 'rspec'

# The solution would work like the following:
# get_even_numbers([2,4,5,6]) => [2,4,6]

def get_even_numbers(arr)
  arr.select(&:even?)
end

p get_even_numbers([2, 4, 5, 6])

describe '#get_even_numbers' do
  it 'returns an array with the event numbers' do
    expect(get_even_numbers([2, 4, 5, 6])).to match_array([2, 4, 6])
  end

  it 'returns an empty array' do
    expect(get_even_numbers([])).to match_array([])
  end
end
