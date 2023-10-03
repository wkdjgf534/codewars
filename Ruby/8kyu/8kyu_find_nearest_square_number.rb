# frozen_string_literal: true

require 'rspec'

# Your task is to find the nearest square number, nearest_sq(n), of a positive integer n.

# Goodluck :)

# The simplest examples from Codewars
# def nearest_square(number)
#   (number**0.5).round**2
# end

# def nearest_square(number)
#   Math.sqrt(number).round ** 2
# end

def nearest_square(number)
  # sqrt - https://ruby-doc.org/core-2.5.1/Math.html#method-c-sqrt
  # sqrt returns float value
  return number if (Math.sqrt(number) % 1).zero?

  array = Math.sqrt(1).to_i.upto(Math.sqrt(number * 2)).map { |n| n**2 }
  # min_by - https://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-min_by
  array.min_by { |x| (number - x).abs }
end

p nearest_square(142)

describe '#nearest_square' do
  it 'returns the closest perfect square for number 1' do
    expect(nearest_square(1)).to eq(1)
  end

  it 'returns the closest perfect square for number 121' do
    expect(nearest_square(111)).to eq(121)
  end
end
