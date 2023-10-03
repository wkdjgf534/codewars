# frozen_string_literal: true

require 'rspec'

# Task

# Given a number , Return the Maximum number could be formed from the digits of the number given.
# Notes
# - Only Positve numbers passed to the function , numbers Contain digits [1:9] inclusive !alt !alt
# - Digit Duplications could occur , So also consider it when forming the Largest !alt

# Input >> Output Examples:

# max_number (213) => (321)

# Explanation:

# As 321 is The Maximum number could be formed from the digits of the number 213 .

#2 - max_number (7389) ==> return (9873)

# Explanation:

# As 9873 is The Maximum number could be formed from the digits of the number 7389 .

# The good solutopn form Codewars
# def max_number(number)
#   number.to_s.chars.sort.reverse.join.to_i
# end

def max_number(number)
  number.to_s.chars.map(&:to_i).sort.reverse.join.to_i
end

p max_number(14_253)

describe '#max_number' do
  it 'transforms a number into bigger number' do
    expect(max_number(123)).to eq(321)
  end
end
