# frozen_string_literal: true

require 'rspec'

# Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

def even_or_odd(number)
  number.even? ? 'Even' : 'Odd'
end

p even_or_odd(22)

describe '#even_or_odd' do
  it 'returns \'Even\' if number is even' do
    expect(even_or_odd(22)).to eq('Even')
  end

  it 'returns \'Odd\' if number is odd' do
    expect(even_or_odd(13)).to eq('Odd')
  end
end
