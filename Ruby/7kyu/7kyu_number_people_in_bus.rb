# frozen_string_literal: true

require 'rspec'

# Number of people in the bus
# There is a bus moving in the city, and it takes and drop some people in each bus stop.
# You are provided with a list (or array) of integer arrays (or tuples). Each integer
# array has two items which represent number of people get into bus (The first item)
# and number of people get off the bus (The second item) in a bus stop.

# Your task is to return number of people who are still in the bus after the last bus station
# (after the last array). Even though it is the last bus stop, the bus is not empty and some
#  people are still in the bus, and they are probably sleeping there :D

# Take a look on the test cases.
# Please keep in mind that the test cases ensure that the number of people in the bus
# is always >= 0. So the return integer can't be negative.
# The second value in the first integer array is 0, since the bus is empty in the first bus stop.

# The best solution from Codewars
# def number(bus_stops)
#   bus_stops.map { |on, off| on - off }.reduce(:+)
# end

def number(bus_stops)
  # transpose - http://ruby-doc.org/core-2.6.2/Array.html#method-i-transpose
  # a = [[1,2], [3,4], [5,6]]
  # a.transpose => [[1, 3, 5], [2, 4, 6]]
  result = bus_stops.transpose.map { |e| e.inject(:+) }
  result[0] - result[1]
end

p number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]])

describe '#number' do
  it 'returns the total number of passanger in the bus' do
    expect(number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]])).to eq(17)
  end
end
