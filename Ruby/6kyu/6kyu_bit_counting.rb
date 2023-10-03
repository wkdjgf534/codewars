# frozen_string_literal: true

require 'rspec'

# Write a function that takes an integer as input, and returns the number of bits
# that are equal to one in the binary representation of that number. You can
# guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should
# return 5 in this case

def count_bits(num)
  num.to_s(2).count('1')
end

p count_bits(10)

describe '#count_bits' do
  it 'counts all 1 number in a string' do
    expect(count_bits(10)).to eq(2)
  end
end
