# frozen_string_literal: true

require 'rspec'

# You're laying out a rad pixel art mural to paint on your living room wall in homage to Paul Robertson, your
# favorite pixel artist.

# You want your work to be perfect down to the millimeter. You haven't decided on the dimensions of your piece,
# how large you want your pixels to be, or which wall you want to use. You just know that you want to fit an
# exact number of pixels.

# To help decide those things you've decided to write a function, is_divisible() that will tell you whether a
# wall of a certain length can exactly fit an integer number of pixels of a certain length.

# Your function should take two arguments: the size of the wall in millimeters and the size of a pixel in millimeters.
# It should return True if you can fit an exact number of pixels on the wall, otherwise it should return False.

# For example

# is_divisible(4050, 27) => true
# is_divisible(4066, 27) => false

# A simple solution from Codewars
# def divisible?(wall_length, pixel_size)
#   wall_length % pixel_size == 0
# end

def divisible?(wall_length, pixel_size)
  ((wall_length / pixel_size.to_f) % 1).zero?
end

p divisible?(4050, 26)

describe '#divisible?' do
  it 'returns true for first variant' do
    expect(divisible?(10_000, 20)).to be_truthy
  end

  it 'returns false for second variant' do
    expect(divisible?(10_000, 21)).to be_falsey
  end
end
