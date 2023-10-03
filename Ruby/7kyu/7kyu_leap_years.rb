# frozen_string_literal: true

require 'rspec'

# In this kata you should simply determine, whether a given year is a leap year or not.
# In case you don't know the rules, here they are:

# years divisible by 4 are leap years
# but years divisible by 100 are not leap years
# but years divisible by 400 are leap years

# Additional Notes:
# Only valid years (positive integers) will be tested, so you don't have to validate them
# Examples can be found in the test fixture.

# The best solution from Codewars
# require 'date'
# def leap_year?(year)
#   DateTime.leap? year
# end

def leap_year?(year)
  (year % 4).zero? && !(year % 100).zero? || (year % 400).zero?
end

p leap_year?(2000)

describe '#leap_year?' do
  it 'returns true' do
    expect(leap_year?(2000)).to be_truthy
  end

  it 'returns true' do
    expect(leap_year?(400)).to be_truthy
  end

  it 'returns false' do
    expect(leap_year?(300)).to be_falsey
  end

  it 'returns false' do
    expect(leap_year?(1234)).to be_falsey
  end
end
