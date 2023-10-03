# frozen_string_literal: true

require 'rspec'

# Your task is to create a function that does four basic mathematical operations.

# The function should take three arguments - operation(string/char), value1(number), value2(number).
# The function should return result of numbers after applying the chosen operation.

# Examples:

# basic_op('+', 4, 7)   => 11
# basic_op('-', 15, 18) => -3
# basic_op('*', 5, 5)   => 25
# basic_op('/', 49, 7)  => 7

def basic_op(operator, value1, value2)
  value1.public_send(operator, value2)
end

p basic_op('+', 4, 7)

describe '#basic_op' do
  it 'returns the sum of two numbers' do
    expect(basic_op('+', 4, 7)).to eq(11)
  end
end
