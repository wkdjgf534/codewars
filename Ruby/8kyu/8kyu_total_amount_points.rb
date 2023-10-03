# frozen_string_literal: true

require 'rspec'

# Our football team finished the championship. The result of each match look like "x:y".
# Results of all matches are recorded in the collection.

# For example: ["3:1", "2:2", "0:1", ...]

# Write a function that takes such collection and counts the points of our team in the championship. Rules for counting points for each match:

# if x>y - 3 points
# if x<y - 0 point
# if x=y - 1 point

# Notes:
# there are 10 matches in the championship
# 0 <= x <= 4
# 0 <= y <= 4

array1 = ['1:0', '2:0', '3:0', '4:0', '2:1', '3:1', '4:1', '3:2', '4:2', '4:3']
array2 = ['0:1', '0:2', '0:3', '0:4', '1:2', '1:3', '1:4', '2:3', '2:4', '3:4']

# The best solution form Codewars
# def points(games)
#   games.sum { |score| [1, 3, 0][score[0] <=> score[2]] }
# end

def points(games)
  final_points = 0
  games.map { |elem| elem.split(':') }.each do |value|
    final_points += 3 if value[0] > value[1]
    final_points += 0 if value[0] < value[1]
    final_points += 1 if value[0] == value[1]
  end
  final_points
end

p points(array1)

describe '#points' do
  it 'returns the total amount of points equal 30' do
    expect(points(array1)).to eq(30)
  end

  it 'returns 0' do
    expect(points(array2)).to eq(0)
  end
end
