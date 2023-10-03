# frozen_string_literal: true

require 'rspec'

# Your task is to write function factorial.
# https://en.wikipedia.org/wiki/Factorial

def factorial(n)
  (1..n).inject(1) { |fact, num| fact * num } unless n.negative?
end

p factorial(0)

describe '#nato' do
  it 'returns 0 for input -1' do
    expect(factorial(-1)).to be_nil
  end

  it 'returns 0 for input 0' do
    expect(factorial(0)).to eq(1)
  end

  it 'returns 1 for input 1' do
    expect(factorial(1)).to eq(1)
  end

  it 'returns 24 for input 4' do
    expect(factorial(4)).to eq(24)
  end

  it 'returns 5040 for input 7' do
    expect(factorial(7)).to eq(5040)
  end
end
