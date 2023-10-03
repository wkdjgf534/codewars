# frozen_string_literal: true

require 'rspec'

# You have an array of numbers.
# Your task is to sort ascending odd numbers but even numbers must be on their places.
# Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.

# Example
# sort_array([5, 3, 2, 8, 1, 4]) => [1, 3, 2, 8, 5, 4]
# sort_array([5, 3, 2, 8, 1, 4]) => [1, 3, 2, 8, 5, 4]

# The best solution from Codewars
# def sort_array(source_array)
#   odd = source_array.select(&:odd?).sort.each
#   source_array.map { |x| x.odd? ? odd.next : x }
# end

def sort_array(source_array)
  odd_array = []
  counter = 0
  odd = source_array.select { |n| n if n.odd? }.sort
  source_array.each do |elm|
    if elm.even?
      odd_array << elm
    else
      odd_array << odd[counter]
      counter += 1
    end
  end
  odd_array
end

p sort_array([2, 22, 37, 11, 4, 1, 5, 0]) # [2, 22, 1, 5, 4, 11, 37, 0]

describe '#sort_array' do
  it 'returns a new array where odd numbers are sorted' do
    expect(sort_array([2, 22, 37, 11, 4, 1, 5, 0])).to eq([2, 22, 1, 5, 4, 11, 37, 0])
  end
end
