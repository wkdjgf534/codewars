# frozen_string_literal: true

require 'rspec'

# Create a function squares(x, n) that starts with a number (x) and returns an array of length
# (n) with squares of the previous number. If n is negative or zero, return an empty array/list.

# Examples
# squares(2,5) => [2, 4, 16, 256, 65536]
# squares(3,3) => [3, 9, 81]

# The best solution from Codewars
# def squares(x, n)
#   (0...n).map{|i| x ** (2 ** i)}
# end

def squares(x, n)
  return [] if n.zero? || n.negative?
  result = [] << x
  Array.new(n - 1) { result << x *= x }
  result
end

p squares(2, 5)

describe '#squares' do
  it 'returns an array of numbers if n is greater than 0' do
    expect(squares(3, 3)).to match_array([3, 9, 81])
  end

  it 'returns a empty array if n is smaller or equal 0' do
    expect(squares(3, 0)).to match_array([])
  end
end
