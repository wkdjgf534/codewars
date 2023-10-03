# frozen_string_literal: true

require 'rspec'

# Get the number n (n>0) to return the reversed sequence from n to 1.

# Example : n=5 >> [5, 4, 3, 2, 1]

def reverse_seq(number) = number.downto(1).to_a

p reverse_seq(6)

describe '#reverse_seq' do
  it 'returns an array of numbers' do
    expect(reverse_seq(5)).to match_array([5, 4, 3, 2, 1])
  end

  it 'returns an empty array' do
    expect(reverse_seq(0)).to match_array([])
  end
end
