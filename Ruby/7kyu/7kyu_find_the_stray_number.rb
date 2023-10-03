# frozen_string_literal: true

require 'rspec'

# You are given an odd-length array of integers, in which all of them are the same, except for one single number.
# Complete the method which accepts such an array, and returns that single different number.
# The input array will always be valid! (odd-length >= 3)
# Examples

# stray([1, 1, 2]) => 2
# stray([17, 17, 3, 17, 17, 17, 17]) => 3

# Two best solution from Codewars
# def stray(numbers)
#   numbers.each { |x| return x if numbers.count(x) == 1 }
# end

# def stray(numbers)
#   numbers.reduce(:^)
# end

def stray(numbers)
  numbers.group_by { |x| x }.select { |k, v| k if v.size == 1 }.keys.join.to_i
end

p stray([1, 1, 1, 1, 2])

describe '#stray' do
  it 'returns an unique number from an array' do
    expect(stray([1, 1, 1, 1, 2])).to eq(2)
  end
end
