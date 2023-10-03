# frozen_string_literal: true

require 'rspec'

# Given a string of words and numbers. Extract the expression including:
# the operator: either addition or subtraction
# the two numbers that we are operating on

# Return the result of the calculation.
# Example:
# "Panda has 48 apples and loses 4" returns 44
# "Jerry has 34 apples and gains 6" returns 40
# "loses" and "gains" are the only two words describing operators.
# Should be a nice little kata for you :)
# Note: No fruit debts nor bitten apples = The numbers are integers and no negatives

def calculate(str)
  numbers = str.scan(/\d+/).map(&:to_i)
  str.match?(/loses/) ? numbers.reduce(&:-) : numbers.reduce(&:+)
end

p calculate('Panda has 48 apples and gains 4')

describe '#calculate' do
  it 'addition' do
    str = 'Panda has 48 apples and gains 4'
    expect(calculate(str)).to eq(52)
  end

  it 'subtraction' do
    str = 'Panda has 48 apples and loses 4'
    expect(calculate(str)).to eq(44)
  end
end
