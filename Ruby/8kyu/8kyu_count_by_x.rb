# frozen_string_literal: true

require 'rspec'

# Create a function with two arguments that will return a list of length (n) with multiples of (x).
# Assume both the given number and the number of times to count will be positive numbers greater than 0.
# Return the results as an array (or list in Python, Haskell or Elixir).

# Examples:
# count_by(1,10) => [1,2,3,4,5,6,7,8,9,10]
# count_by(2,5) => [2,4,6,8,10]

# Two best solutions from codewars
# def count_by(x, n)
#   (1..n).map { |i| i * x }
# end

# def count_by(x, n)
#   # take - https://ruby-doc.org/core-2.6/Array.html#method-i-take
#   # If a negative number is given, raises an ArgumentError.
#   # a = [1, 2, 3, 4, 5, 0]
#   # a.take(3) => [1, 2, 3]
#   x.step(by: x).take(n)
# end

def count_by(x, n)
  array = []
  x.step(x * n, x) { |elm| array << elm }
  array
end

p count_by(100, 5)

describe '#count_by' do
  it 'returns an array with specific sequence' do
    expect(count_by(1, 5)).to eq([1, 2, 3, 4, 5])
  end
end
