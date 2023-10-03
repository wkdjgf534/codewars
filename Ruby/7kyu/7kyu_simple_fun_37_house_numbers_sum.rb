# frozen_string_literal: true

require 'rspec'

# Task

# A boy is walking a long way from school to his home. To make the walk more fun he decides to add up all the numbers
# of the houses that he passes by during his walk. Unfortunately, not all of the houses have numbers written on them,
# and on top of that the boy is regularly taking turns to change streets, so the numbers don't appear to him in
# any particular order.

# At some point during the walk the boy encounters a house with number 0 written on it, which surprises him so
# much that he stops adding numbers to his total right after seeing that house.

# For the given sequence of houses determine the sum that the boy will get. It is guaranteed that there will
# always be at least one 0 house on the path.

# Example

# For inputArray = [5, 1, 2, 3, 0, 1, 5, 0, 2], the output should be 11.

# The answer was obtained as 5 + 1 + 2 + 3 = 11.
# Input/Output
# [input] integer array inputArray
# Constraints: 5 ≤ inputArray.length ≤ 50, 0 ≤ inputArray[i] ≤ 10.
# [output] an integer

# Two good solutions from Codewars
# def house_numbers_sum(input_array)
#   input_array.take_while(&:positive?).sum
# end

# def house_numbers_sum(input_array)
#   input_array[0...input_array.index(0)].sum
# end

def house_numbers_sum(input_array)
  zero_index = input_array.index(0)
  # slice - http://ruby-doc.org/core-2.5.1/Array.html#method-i-slice-21
  # a = [ "a", "b", "c", "d", "e" ]
  # a[1..3] => [ "b", "c", "d" ]
  input_array.slice!(zero_index..-1)
  input_array.sum
end

p house_numbers_sum([5, 1, 2, 3, 0, 1, 5, 0, 2])

describe '#house_numbers_sum' do
  it 'returns a positive number of total amount of sorted elements in an array' do
    expect(house_numbers_sum([5, 1, 2, 3, 0, 1, 5, 0, 2])).to eq(11)
  end
end
