# frozen_string_literal: true

require 'rspec'

# Complete the function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n (inclusive).
# Examples
# n = 0  => [1]         # [2^0]
# n = 1  => [1, 2]      # [2^0, 2^1]
# n = 2  ==> [1, 2, 4]  # [2^0, 2^1, 2^2]

def powers_of_two(n)
  (0..n).map { |num| 2**num }
end

p powers_of_two(4)

describe '#powers_of_two' do
  it 'returns an array of power of two for 0' do
    expect(powers_of_two(0)).to match_array([1])
  end

  it 'returns an array of power of two for range from 1 to 4' do
    expect(powers_of_two(4)).to match_array([1, 2, 4, 8, 16])
  end
end
