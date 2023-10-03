# frozen_string_literal: true

require 'rspec'

# My grandfather always predicted how old people would get, and right before
# he passed away he revealed his secret!

# In honor of my grandfather's memory we will write a function using his formula!

# Take a list of ages when each of your great-grandparent died.
# Multiply each number by itself.
# Add them all together.
# Take the square root of the result.
# Divide by two.

# Example
# predict_age(65, 60, 75, 55, 60, 63, 64, 45) == 86
# Note: the result should be rounded down to the nearest integer.
# Some random tests might fail due to a bug in the JavaScript implementation.
# Simply resubmit if that happens to you.

# The best solutions from Codewars
# def predict_age(*ages)
#   (ages.map { |x| x * x }.sum**0.5 / 2).to_i
# end

# def predict_age(*args)
#   # Method abs2 → real. Returns square of self.
#   Math.sqrt(args.map(&:abs2).sum).floor / 2
# end

def predict_age(*age)
  sum_age = age.map { |x| x**2 }.sum
  Math.sqrt(sum_age).floor / 2
end

p predict_age(65, 60, 75, 55, 60, 63, 64, 45)

describe '#predict_age' do
  it 'returns a new value 86' do
    expect(predict_age(65, 60, 75, 55, 60, 63, 64, 45)).to eq(86)
  end

  it 'returns 0' do
    expect(predict_age(0, 0, 0, 0, 0, 0, 0, 0)).to eq(0)
  end
end
