# frozen_string_literal: true

require 'rspec'

# It's the academic year's end, fateful moment of your school report. The averages must be calculated.
# All the students come to you and entreat you to calculate their average for them.
# Easy ! You just need to write a script.

# Return the average of the given array rounded down to its nearest integer.

# The array will never be empty.

# A good solution from Codewars
# def get_average(marks)
#   marks.sum / marks.size
# end

def get_average(marks)
  marks.inject(:+) / marks.size
end

p get_average([2, 2, 2, 2])

describe '#get_average' do
  it 'it returns an average mark for a school reports' do
    expect(get_average([2, 2, 2, 2])).to eq(2)
  end
end
