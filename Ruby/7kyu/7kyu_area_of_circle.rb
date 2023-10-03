# frozen_string_literal: true

require 'rspec'

# The best solution from Codewars
# def circle_area(rad)
#   rad.to_f.positive? ? (Math::PI * rad * rad).round(2) : false
# end

def circle_area(rad)
  rad.to_f.zero? || rad.negative? ? false : (Math::PI * rad**2).round(2)
end

p circle_area(68)

describe '#circle_area' do
  it 'returns a positive value if a radius is a positive number' do
    expect(circle_area(68)).to eq(14_526.72)
  end

  it 'returns false if a radius is zero or a negative number' do
    expect(circle_area(-1)).to be_falsey
  end
end
