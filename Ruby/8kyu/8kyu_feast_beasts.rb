# frozen_string_literal: true

require 'rspec'

# All of the animals are having a feast! Each animal is bringing one dish. There is just one rule: the dish must
# start and end with the same letters as the animal's name. For example, the great blue heron is bringing garlic
# naan and the chickadee is bringing chocolate cake.

# Write a function feast that takes the animal's name and dish as arguments and returns true or false to indicate
# whether the beast is allowed to bring the dish to the feast.

# Assume that beast and dish are always lowercase strings, and that each has at least two letters. beast and dish
# may contain hyphens and spaces, but these will not appear at the beginning or end of the string. They will not
# contain numerals.

# The best solution from Codewars
# def feast(beast, dish)
#   beast[0] == dish[0] && beast[-1] == dish[-1]
# end

def feast(beast, dish)
  return true if beast[0].eql?(dish[0]) && beast[-1].eql?(dish[-1])
  false
end

p feast('great blue heron', 'garlic naani')

describe '#feast' do
  it 'returns true if first letter and last letters are equal' do
    animal = 'great blue heron'
    dish = 'garlic naan'
    expect(feast(animal, dish)).to be_truthy
  end

  it 'returns false if first letter and last letters are not equal' do
    animal = 'brown bear'
    dish = 'bear claw'
    expect(feast(animal, dish)).to be_falsey
  end
end
