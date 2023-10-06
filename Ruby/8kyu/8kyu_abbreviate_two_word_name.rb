# frozen_string_literal: true

require 'rspec'

# Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

# The output should be two capital letters with a dot seperating them.

# It should look like this:

# Sam Harris => S.H

# Patrick Feeney => P.F

# Yet another variant from Codewars
# def abbrev_name(name)
#   name.split.map { |n| n[0] }.join('.').upcase
# end

def abbrev_name(name) = name.split.map { |n| n[0].capitalize }.join('.')

p abbrev_name('Sam Harris')

describe '#abbrev_name' do
  it 'returns two Capitalized letters instead of name' do
    expect(abbrev_name('Sam Harris')).to eq('S.H')
  end

  it 'returns two Capitalized letters instead of name' do
    expect(abbrev_name('Peter callum')).to eq('P.C')
  end
end
