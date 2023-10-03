# frozen_string_literal: true

require 'rspec'

# The cockroach is one of the fastest insects. Write a function which takes its speed in km per hour and returns
# it in cm per second, rounded down to the integer (= floored).

# For example:

# cockroach_speed(1.08) => 30

# Note! The input is a Real number (actual type is language dependent) and is >= 0. The result should be an Integer.

def cocroach_speed(speed)
  (speed * 100_000 / 3600).floor
end

p cocroach_speed(1.08)

describe '#cockroach_speed' do
  it 'returns speed of cockroach in cantimetres per second' do
    expect(cocroach_speed(1.08)).to eq(30)
  end
end
