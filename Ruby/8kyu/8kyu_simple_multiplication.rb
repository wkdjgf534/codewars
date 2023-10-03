# frozen_string_literal: true

require 'rspec'

# This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.

def simple_multiplication(number)
  number.even? ? number * 8 : number * 9
end

p simple_multiplication(2)

describe '#simple_multiplication' do
  it 'returns result of multiplication 2 to 8' do
    expect(simple_multiplication(2)).to eq(16)
  end

  it 'returns result of multiplication 3 to 9' do
    expect(simple_multiplication(3)).to eq(27)
  end
end
