# frozen_string_literal: true

require 'rspec'

# Write a function that accepts an array of 10 integers (between 0 and 9), that
#  returns a string of those numbers in the form of a phone number.
# Example:

# createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

# The returned format must be correct in order to complete this challenge.
# Don't forget the space after the closing parentheses!

def create_phone_number(numbers)
  string = numbers.join
  first = string[0..2]
  second = string[3..5]
  third = string[6..9]
  "(#{first}) #{second}-#{third}"
end

p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

describe '#create_phone_number' do
  it 'returns a specific string, which is containing a telephone number' do
    expect(create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq('(123) 456-7890')
  end
end
