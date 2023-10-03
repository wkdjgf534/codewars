# frozen_string_literal: true

require 'rspec'

# Is the number even?

# If the numbers is even return true. If it's odd, return false.

# Oh yeah... the following symbols/commands have been disabled!

# use of %
# use of .even? in Ruby
# use of mod in Python

# A good example from Codewars
# def even?(number)
#   (number & 1) < 1
# end

def even?(number)
  # you can't use .even? for this kata
  !number.odd?
end

p even?(32)

describe '#even?' do
  it 'returns true if a number is even' do
    expect(even?(100)).to be_truthy
  end

  it 'returns false if a number is false' do
    expect(even?(111)).to be_falsey
  end
end
