# frozen_string_literal: true

require 'rspec'

# Complete the squareSum/square_sum/SquareSum method so that it squares each number passed into it and then sums
# the results together.

# For example:

# square_sum([1, 2, 2]) => should return 9

# The best variant from codewars
# def squareSum(numbers)
#   numbers.reduce { |s, n| s+=n**2 }
# end

def square_sum(numbers)
  numbers.map { |x| x * x }.sum
end

p square_sum([1, 2, 2])

describe '#square_sum' do
  it 'calculates the total square sum of all elements of the array' do
    expect(square_sum([1, 2, 2])).to eq(9)
  end
end
