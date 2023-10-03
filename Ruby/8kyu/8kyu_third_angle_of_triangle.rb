# frozen_string_literal: true

require 'rspec'

# You are given two angles (in degrees) of a triangle.
# Write a function to return the 3rd.
# Note: only positive integers will be tested.

def other_angle(a, b)
  180 - (a + b)
end

p other_angle(30, 60)

describe '#other_angle' do
  it 'returns the third angle of triangle' do
    expect(other_angle(30, 60)).to eq(90)
  end
end
