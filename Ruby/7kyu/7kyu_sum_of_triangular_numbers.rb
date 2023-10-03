# frozen_string_literal: true

require 'rspec'

# Your task is to return the sum of Triangular Numbers up-to-and-including the nth Triangular Number.

# Triangular Number: "any of the series of numbers (1, 3, 6, 10, 15, etc.) obtained by continued
# summation of the natural numbers 1, 2, 3, 4, 5, etc."

# [01]
# 02 [03]
# 04 05 [06]
# 07 08 09 [10]
# 11 12 13 14 [15]
# 16 17 18 19 20 [21]

# https://en.wikipedia.org/wiki/Triangular_number

# A triangular number or triangle number counts objects arranged in an equilateral triangle, as in the diagram
# on the right. The nth triangular number is the number of dots in the triangular arrangement with n dots on a
#side, and is equal to the sum of the n natural numbers from 1 to n. The sequence of triangular numbers
# (sequence A000217 in the OEIS), starting at the 0th triangular number, is

# 0, 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66, 78, 91, 105, 120, 136, 153, 171, 190, 210, 231, 253, 276, 300, 325,
# 351, 378, 406, 435, 465, 496, 528, 561, 595, 630, 666...

# Tn = n * (n + 1) / 2
# T4 = 4 * (4 + 1) / 2 = 10

# Two good examples from Codewars
# def sum_triangular_numbers(number)
#   number <= 0 ? 0 : number * (number + 1) * (number + 2) / 6
# end

# def sum_triangular_numbers(number)
#   return 0 if number <= 0
#   (number * (number + 1) * (number + 2)) / 6
# end

def sum_triangular_numbers(number)
  (1..number).map { |n| n * (n + 1) / 2 }.sum
end

p sum_triangular_numbers(6)

describe '#sum_triangular_umbers' do
  it 'returns sum of 1, 3, 6, 10, 15, 21' do
    expect(sum_triangular_numbers(6)).to eq(56)
  end

  it 'returns 0 if you send 0' do
    expect(sum_triangular_numbers(0)).to eq(0)
  end

  it 'returns 0 if you send a negative number' do
    expect(sum_triangular_numbers(-213)).to eq(0)
  end
end
