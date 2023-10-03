# frozen_string_literal: true

require 'rspec'

# Write a function, persistence, that takes in a positive parameter num and returns
# its multiplicative persistence, which is the number of times you must multiply the
# digits in num until you reach a single digit.

# For example:
# persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                  # and 4 has only one digit

# persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                   # 1*2*6=12, and finally 1*2=2

# persistence(4) # returns 0, because 4 is already a one-digit number

def persistence(num)
  num < 10 ? 0 : 1 + persistence(num.digits.reduce(&:*))
end

p persistence(25)

describe '#persistence' do
  it 'returns 0 if a number less than 10' do
    expect(persistence(4)).to eq(0)
  end

  it 'returns 2 if a number is equal 25' do
    expect(persistence(25)).to eq(2)
  end
end
