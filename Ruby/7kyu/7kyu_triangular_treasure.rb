# frozen_string_literal: true

require 'rspec'

# Triangular numbers are so called because of the equilateral triangular shape
#  that they occupy when laid out as dots. i.e.

# 1st (1)   2nd (3)    3rd (6)
# *          **        ***
#            *         **
#                      *

# You need to return the nth triangular number. You should return 0 for out of range values:

#  triangular(0) => 0
#  triangular(2) => 3
#  triangular(3) => 6
#  triangular(-10) =>0

# Two good solutions from Codewars
# def triangular(num)
#   (0..num).reduce(0, :+)
# end

# def triangular(num)
#   (0..num).sum
# end

def triangular(num)
  (1..num).to_a.sum
end

p triangular(-4)

describe '#triangular' do
  it 'returns a positive number' do
    expect(triangular(4)).to eq(10)
  end

  it 'returns 0 if an input value equals to zero or a negative number' do
    expect(triangular(-2)).to eq(0)
  end
end
