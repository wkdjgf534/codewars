# frozen_string_literal: true

require 'rspec'

# Write a function called repeatStr which repeats the given string string exactly n times.

# repeat_str(6, 'I') => "IIIIII"
# repeat_str(5, 'Hello') => "HelloHelloHelloHelloHello"

def repeat_str(num, str) = str * num

p repeat_str(3, '*')

describe '#repeat_str' do
  it 'returns 3 astirisks instead of one' do
    expect(repeat_str(3, '*')).to eq('***')
  end
end
