# frozen_string_literal: true

require 'rspec'

# Find the total sum of internal angles (in degrees) in an n-sided simple polygon.
# N will be greater than 2.

def angle(num)
  (num - 2) * 180
end

p angle(2)

describe '#angle' do
  it 'returns a sum of internal angles' do
    expect(angle(3)).to eq(180)
  end

  it 'returns 0 when amount of sides are equal to 2 or less' do
    expect(angle(2)).to eq(0)
  end
end
