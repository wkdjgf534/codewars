# frozen_string_literal: true

require 'rspec'

# You are the greatest chef on earth. No one boils eggs like you! Your restaurant
# is always full of guests, who love your boiled eggs. But when there is a greater
# order of boiled eggs, you need some time, because you have only one pot for your job. How much time do you need?

# Your Task
# Implement a function, which takes a non-negative integer, representing the number of eggs to boil. It must return the time in minutes (integer), which it takes to have all the eggs boiled.

# Rules
# you can put at most 8 eggs into the pot at once
# it takes 5 minutes to boil an egg
# we assume, that the water is boiling all the time (no time to heat up)
# for simplicity we also don't consider the time it takes to put eggs into the pot or get them out of it

# Example
# cooking_time 0 # must return 0
# cooking_time 5 # must return 5
# cooking_time 10 # must return 10

# def cooking_time(eggs)
#   # ceil - http://ruby-doc.org/core-2.6.2/Float.html#method-i-ceil
#   # Returns the smallest number greater than or equal to float with a precision of ndigits decimal digits (default: 0).
#   # When the precision is negative, the returned value is an integer with at least ndigits.abs trailing zeros.
#   # Returns a floating point number when ndigits is positive, otherwise returns an integer.
#   # 1.2.ceil    => 2
#   # 2.0.ceil    => 2
#   # (-1.2).ceil => -1
#   # (-2.0).ceil => -2

#   (eggs / 8.0).ceil * 5
# end

def cooking_time(eggs)
  return 0 if eggs.zero?
  return 5 if eggs.between?(1, 8)

  eggs / 8 * 5 + ((eggs % 8).zero? ? 0 : 5)
end

p cooking_time(100)

describe '#cooking_time' do
  it 'returns 0 minutes for 0 eggs' do
    expect(cooking_time(0)).to eq(0)
  end

  it 'returns 5 minutes for 8 eggs' do
    expect(cooking_time(8)).to eq(5)
  end

  it 'returns 65 minutes for 100 eggs' do
    expect(cooking_time(100)).to eq(65)
  end
end
