# frozen_string_literal: true

require 'rspec'

# Convert number to reversed array of digits

# Given a random number:

#    C#: long;
#    C++: unsigned long;

# You have to return the digits of this number within an array in reverse order.

# Example:

# digitize(348597) => [7,9,5,8,4,3]

# The best solution from Codewars
# def digitize(number)
# # http://ruby-doc.org/core-2.5.1/Integer.html#method-i-digits
# # 12345.digits => [5, 4, 3, 2, 1]
#  number.digits
# end

def digitize(number)
  number.to_s.chars.map(&:to_i).reverse
end

p digitize(321_456)

describe '#digitize' do
  it 'converts a number to an array of digits' do
    expect(digitize(321_456)).to match_array([6, 5, 4, 1, 2, 3])
  end
end
