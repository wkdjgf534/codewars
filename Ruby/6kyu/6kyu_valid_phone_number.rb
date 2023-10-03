# frozen_string_literal: true

require 'rspec'

# Write a function that accepts a string, and returns true if it is in the form of a phone number.
# Assume that any integer from 0-9 in any of the spots will produce a valid phone number.

# Only worry about the following format:
# (123) 456-7890 (don't forget the space after the close parentheses)

# Examples:
# '(123) 456-7890'  => true
# '(1111)555 2345'  => false
# '(098) 123 4567'  => false

# The best solution from Codewar
# def valid_phone_number(phone_number)
#   !!(phone_number =~ /^\(\d{3}\) \d{3}-\d{4}$/)
# end

def valid_phone_number(phone_number)
  !!(phone_number =~ /^\([0-9]{3}\)\s[0-9]{3}\-[0-9]{4}$/)
end

p valid_phone_number('(123) 456-7893')

describe '#valid_phone_number' do
  it 'returns true' do
    expect(valid_phone_number('(123) 456-7893')).to be_truthy
  end

  it 'returns false' do
    expect(valid_phone_number('(123) 456-78931')).to be_falsey
  end

  it 'returns false' do
    expect(valid_phone_number('')).to be_falsey
  end
end
