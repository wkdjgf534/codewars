# frozen_string_literal: true

require 'rspec'

# Very simple, given a number, find its opposite.

# Examples:

# opposite_number(1) => -1
# opposite_number(14) => -14
# opposite_number(-34) => 34

def opposite_number(number)= -number

p opposite_number(10)

describe '#opposite_number' do
  it 'returns a posiitive number' do
    expect(opposite_number(-1)).to eq(1)
  end
  it 'returns zero' do
    expect(opposite_number(0)).to eq(0)
  end
  it 'returns a negative number' do
    expect(opposite_number(1)).to eq(-1)
  end
end
