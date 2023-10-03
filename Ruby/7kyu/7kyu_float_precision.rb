# frozen_string_literal: true

require 'rspec'

# Update the solution method to round the argument value to the closest precision of two.
# The argument will always be a float.

# solution(23.23456) => 23.23
# solution(1.546) => 1.55

def float_precesion(value)
  value.round(2)
end

p float_precesion(12.2323)

describe '#float_precision' do
  it 'rounds a float number correctly' do
    expect(float_precesion(12.2323)).to eq(12.23)
  end
end
