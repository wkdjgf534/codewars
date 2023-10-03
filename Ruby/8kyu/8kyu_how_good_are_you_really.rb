# frozen_string_literal: true

require 'rspec'

# There was a test in your class and you passed it. Congratulations!
# But you're an ambitious person. You want to know if you're better than the average student in your class.
# You got an array with your colleges' points. Now calculate the average to your points!

# Return True if you're better, else False!
# Note:
# Your points are not included in the array of your classes points.
#  For calculating the average point you may add your point to the given array!

def better_than_average(arr, points)
  arr.sum / arr.size < points
end

p better_than_average([2, 3], 5)

describe '#better_than_average' do
  it 'returns \'true\'' do
    expect(better_than_average([2, 3], 5)).to be_truthy
  end

  it 'returns \'false\'' do
    expect(better_than_average([10, 10], 5)).to be_falsey
  end
end
