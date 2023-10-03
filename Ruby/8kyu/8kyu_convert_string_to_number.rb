# frozen_string_literal: true

require 'rspec'

# Note: This kata is inspired by Convert a Number to a String!. Try that one too.
# Description

# We need a function that can transform a string into a number. What ways of achieving this do you know?

# Note: Don't worry, all inputs will be strings, and every string is a perfectly valid representation
# of an integral number.
# Examples

# string_to_number "1234"  => 1234
# string_to_number "605"   => 605
# string_to_number "1405"  => 1405
# string_to_number "-7"    => -7

def string_to_number(string)
  string.to_i
end

p string_to_number('1234')

describe '#string_to_number' do
  it 'converts the string \'1234\' to the number 1234' do
    expect(string_to_number('1234')).to eq(1234)
  end

  it 'converts the string \'-7\' to the number -7' do
    expect(string_to_number('-7')).to eq(-7)
  end
end
