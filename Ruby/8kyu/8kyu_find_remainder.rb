# frozen_string_literal: true

require 'rspec'

# Write a function that accepts two arguments and returns the remainder after dividing the larger
# number by the smaller number. Division by zero should return NaN
# (in C#, throw a new DivideByZeroException instead). Arguments will both be integers.

def remainder(a, b)
  a = a.abs
  b = b.abs
  return nil if a.zero? || b.zero?

  a > b ? a % b : b % a
end

p remainder(17, 5)

describe '#reminder' do
  it 'returns a number 2' do
    expect(remainder(17, 5)).to eq(2)
  end

  it 'returns nil' do
    expect(remainder(0, 5)).to eq(nil)
  end
end
