# frozen_string_literal: true

require 'rspec'

# Given two numbers and an arithmetic operator (the name of it, as a string),
# return the result of the two numbers having that operator used on them.
# a and b will both be positive integers, and a will always be the first number
# in the operation, and b always the second.

# The four operators are "add", "subtract", "divide", "multiply".
# A few examples:

# arithmetic(5, 2, "add")      => returns 7
# arithmetic(5, 2, "subtract") => returns 3
# arithmetic(5, 2, "multiply") => returns 10
# arithmetic(5, 2, "divide")   => returns 2.5

# Another good solution from Codewars
# OPERATION = { 'add' => :+, 'subtract' => :-, 'multiply' => :*, 'divide' => :/}.freeze
# def arithmetic(num1, num2, operator)
#   [num1, num2].reduce(OPERATION[operator])
# end

def arithmetic(num1, num2, operator)
  operators = {
    'add' => '+',
    'subtract' => '-',
    'multiply' => '*',
    'divide' => '/'
  }
  return 'wrong type of operator' unless operators.key?(operator)
  num1.public_send(operators[operator], num2)
end

p arithmetic(2, 4, 'add')

describe '#arithmetic' do
  it 'adds' do
    expect(arithmetic(1, 2, 'add')).to eq(3)
  end

  it 'subtracts' do
    expect(arithmetic(8, 2, 'subtract')).to eq(6)
  end

  it 'multiplies' do
    expect(arithmetic(5, 2, 'multiply')).to eq(10)
  end

  it 'devides' do
    expect(arithmetic(4, 2, 'divide')).to eq(2)
  end
end
