# frozen_string_literal: false

require 'rspec'

# Write a method that, given two arguments, width and height, returns a string representing
# a rectangle with those dimensions.

# The rectangle should be filled with spaces, and its borders should be composed of asterisks (*).
# For example, the following call:

# get_rectangle_string(3, 3)
# Should return the following string:

# ***
# * *
# ***

# End each line of the string (including the last one) with a carriage return-line feed combination.
# Note: You may assume that width and height will always be greater than zero.

# The best solution from Codewars
# def get_rectangle_string(width, height)
#   lines = '*' * width + "\r\n"
#   return lines if height == 1
#
#   lines += ((width > 2 ? '*' + (' ' * (width - 2)) : '') + "*\r\n") * (height - 2)
#   lines += '*' * width + "\r\n"
#   lines
# end

# My solution
def get_rectangle_string(width, height)
  return "*\r\n" if width == 1 && height == 1
  return "*\r\n*\r\n" if width == 1 && height == 2

  all_stars = '*' * width + "\r\n"
  two_stars = '*' + (' ' * (width - 2)) + '*' + "\r\n"
  str = ''
  str << all_stars
  2.upto(height) { |h| str << (h == height ? all_stars : two_stars) }
  str
end

puts get_rectangle_string(2, 2)

describe '#get_rectangle_string' do
  it 'returns a new string 1x2' do
    expect(get_rectangle_string(1, 2)).to eq("*\r\n*\r\n")
  end

  it 'returns a new string 2x2' do
    expect(get_rectangle_string(2, 2)).to eq("**\r\n**\r\n")
  end

  it 'returns a new string 2x1' do
    expect(get_rectangle_string(2, 1)).to eq("**\r\n")
  end

  it 'returns a new string 1x1' do
    expect(get_rectangle_string(1, 1)).to eq("*\r\n")
  end
end
