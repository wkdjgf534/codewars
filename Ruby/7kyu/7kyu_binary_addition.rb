# frozen_string_literal: true

require 'rspec'

# Implement a function that adds two numbers together and returns their sum in binary.
# The conversion can be done before, or after the addition.

# The binary number returned should be a string.

def add_binary(number1, number2)
  (number1 + number2).to_s(2)
end

p add_binary(3, 4)

describe '#add_binary' do
  it 'returns the sum of two numbers in binary format' do
    expect(add_binary(3, 4)).to eq('111')
  end
end
