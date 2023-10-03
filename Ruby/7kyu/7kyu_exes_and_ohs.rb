# frozen_string_literal: true

require 'rspec'

# Check to see if a string has the same amount of 'x's and 'o's.
# The method must return a boolean and be case insensitive. The string can contain any char.
# Examples input/output:
# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false

def xo(str)
  str.downcase.count('o') == str.downcase.count('x')
end

p xo('zztt')

describe '#xo' do
  it 'returns true if string have the equal values of letters x and o' do
    expect(xo('xo')).to be_truthy
  end

  it 'returns false if string don\'t have the equal values of letters x and o' do
    expect(xo('xxo')).to be_falsey
  end
end
