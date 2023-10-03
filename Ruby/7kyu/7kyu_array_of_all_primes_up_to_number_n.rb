# frozen_string_literal: true

require 'rspec'
require 'prime'

# Code a function which will return an array with all prime numbers smaller than or equal to an arbitrary parameter "n".

# Assume that all parameters will be numbers.

# Remember that in some test cases with a big enough "n", performance might be (more) important.

# The best solution from Codewars
# def prime_array(n)
#   Prime.entries(n)
# end

def prime_array(n)
  prime_array = []
  Prime.each(n) { |elem| prime_array << elem }
  prime_array
end
s
p prime_array(0)

describe '#prime_array' do
  it 'returns an empty array' do
    expect(prime_array(1)).to eq([])
  end

  it 'returns an empty array' do
    expect(prime_array(0)).to eq([])
  end

  it 'returns an array of numbers' do
    expect(prime_array(4)).to match_array([2, 3])
  end
end
