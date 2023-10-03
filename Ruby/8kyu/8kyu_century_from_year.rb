# frozen_string_literal: true

require 'rspec'

# Introduction
# The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and
# including the year 200, etc.

# Task :
# Given a year, return the century it is in.
# Input , Output Examples ::

# century(1705) => 18
# century(1900) => 19
# century(1601) => 17
# century(2000) => 20

def century(year)
  (year % 100).zero? ? year / 100 : (year / 100) + 1
end

p century(1705)

describe '#century' do
  it 'returns the correct century fom 1705' do
    expect(century(1705)).to eq(18)
  end

  it 'returns the correct century fom 10' do
    expect(century(10)).to eq(1)
  end
end
