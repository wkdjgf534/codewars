# frozen_string_literal: true

require 'rspec'

# A square of squares
# You like building blocks. You especially like building blocks that are squares.
# And what you even like more, is to arrange them into a square of square building blocks!

# However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle!
# Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it!
# You just have to check if your number of building blocks is a perfect square.
# Task

# Given an integral number, determine if it's a square number:
# In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
# The tests will always use some integral number, so don't worry about that in dynamic typed languages.
# Examples

# is_square(-1) => false
# is_square(0) => true
# is_square(3) => false
# is_square(4) => true
# is_square(25) => true
# is_square(26) => false

# The best solution form Codewars
# def square?(num)
#   num.negative? ? false : (Math.sqrt(num) % 1).zero?
# end

def square?(num)
  num.negative? ? false : Math.sqrt(num).to_s.match?(/\.0{1}$/)
end

p square?(25)

describe '#square?' do
  it 'returns true if a number is a perfect square number' do
    expect(square?(25)).to be_truthy
  end

  it 'returns flase if a number is not a perfect square number' do
    expect(square?(26)).to be_falsey
  end
end
