# frozen_string_literal: true

require 'rspec'

# Linear Kingdom has exactly one tram line. It has n stops, numbered from 1 to n in the order of tram's movement.
# At the i-th stop ai passengers exit the tram, while bi passengers enter it. The tram is empty before it arrives at
# the first stop.

# Your task

# Calculate the tram's minimum capacity such that the number of people inside the tram never exceeds this capacity at
# any time. Note that at each stop all exiting passengers exit before any entering passenger enters the tram.

# Example

# tram(4, {0, 2, 4, 4}, {3, 5, 2, 0}) => 6

# Explaination:

# - The number of passengers inside the tram before arriving is 0.
# - At the first stop 3 passengers enter the tram, and the number of passengers inside the tram becomes 3.
# - At the second stop 2 passengers exit the tram (1 passenger remains inside). Then 5 passengers enter the tram.
#   There are 6 passengers inside the tram now.
# - At the third stop 4 passengers exit the tram (2 passengers remain inside). Then 2 passengers enter the tram.
#   There are 4 passengers inside the tram now.
# - Finally, all the remaining passengers inside the tram exit the tram at the last stop. There are no passenger
#   inside the tram now, which is in line with the constraints.

# Since the number of passengers inside the tram never exceeds 6, a capacity of 6 is sufficient. Furthermore it is
# not possible for the tram to have a capacity less than 6. Hence, 6 is the correct answer.

def tram(stops, descending, onboarding)
  array = []
  counter = 0
  number = 0
  stops.times do
    number += onboarding[counter]
    number -= descending[counter]
    array << number
    counter += 1
  end
  array.max
end

p tram(10, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], [9, 8, 7, 6, 5, 4, 3, 2, 1, 0])

describe '#tram' do
  it 'returns maximum passengers in a tram with 4 stops' do
    expect(tram(4, [0, 2, 4, 4], [3, 5, 2, 0])).to eq(6)
  end

  it 'returns maximum passengers in a tram with 1 stop' do
    expect(tram(1, [0, 2, 4, 4], [3, 5, 2, 0])).to eq(3)
  end
end
