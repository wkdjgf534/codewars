# frozen_string_literal: true

require 'rspec'

# We need a function that can transform a number into a string.
# Examples:

# number_to_string(123) => '123'
# number_to_string(999) => '999'

def number_to_string(num)
  num.to_s
end

p number_to_string(666)

describe '#number_to_string' do
  it 'converts numbers to strings' do
    expect(number_to_string(666)).to eq('666')
  end
end
