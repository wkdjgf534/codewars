# frozen_string_literal: true

require 'rspec'

# Now you have to write a function called square that takes an argument and returns the square of it.

def square(num)
  num * num
end

p square(5)

describe '#square' do
  it 'it returns square of original number' do
    expect(square(5)).to eq(25)
  end
end
