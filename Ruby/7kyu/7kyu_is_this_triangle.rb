# frozen_string_literal: true

require 'rspec'

# Implement a method that accepts 3 integer values a, b, c. The method should return
# true if a triangle can be built with the sides of given length and false in any other case.
# (In this case, all triangles must have surface greater than 0 to be accepted).

# Another good solution from Codewars
# def triangle?(a, b, c)
#   a, b, c = [a, b, c].sort
#   a + b > c
# end

def triangle?(a, b, c)
  max = [a, b, c].max
  a + b + c - max > max
end

p triangle?(7, 2, 2)

describe '#triangle?' do
  it 'returns true if numbers are correct' do
    expect(triangle?(1, 2, 2)).to be_truthy
  end

  it 'returns false if a number are not correct' do
    expect(triangle?(7, 2, 2)).to be_falsey
  end
end
