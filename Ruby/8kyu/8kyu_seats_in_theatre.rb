# frozen_string_literal: true

require 'rspec'

# Your friend advised you to see a new performance in the most popular theater in the city. He knows a lot about art and
# his advice is usually good, but not this time: the performance turned out to be awfully dull. It's so bad you want to
# sneak out, which is quite simple, especially since the exit is located right behind your row to the left. All you need
# to do is climb over your seat and make your way to the exit.

# The main problem is your shyness: you're afraid that you'll end up blocking the view (even if only for a couple of
# seconds) of all the people who sit behind you and in your column or the columns to your left. To gain some courage,
# you decide to calculate the number of such people and see if you can possibly make it to the exit without disturbing
# too many people.

# Given the total number of rows and columns in the theater (tot_rows and tot_cols, respectively),
# and the row and column
# you're sitting in, return the number of people who sit strictly behind you and in your column or to the left, assuming
# all seats are occupied.

# Example

# For tot_cols = 16, tot_rows = 11, col = 5 and row = 3, the output should be 96

def seats_in_theatre(tot_cols, tot_rows, col, row)
  (tot_cols - col + 1) * (tot_rows - row)
end

p seats_in_theatre(16, 11, 5, 3)

describe '#seats_in_theatre' do
  it 'calculates a total amount of disturbed viewers' do
    expect(seats_in_theatre(16, 11, 5, 3)).to eq(96)
  end
end
