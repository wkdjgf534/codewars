# frozen_string_literal: true

require 'rspec'

# Given a string and an array of integers representing indices, capitalize all letters at the given indices.

# For example:

  # capitalize('abcdef',[1,2,5]) => 'aBCdeF'
  # capitalize('abcdef',[1,2,5,100]) => 'aBCdeF'. There is no index 100.

# The input will be a lowercase string with no spaces and an array of digits.

# The best codewars solution
# def capitalize(s, ind)
#   s.chars.map.with_index { |c, i| ind.include?(i) ? c.upcase : c }.join
# end

def capitalize(s, ind)
  string = []
  s.chars.each_with_index { |char, i| ind.include?(i) ? string << char.upcase : string << char }
  string.join
end

p capitalize('abcdef', [1, 2, 5])

describe '#capitalize' do
  it 'returns a converted string aBCdeF' do
    expect(capitalize('abcdef', [1, 2, 5])).to eq('aBCdeF')
  end

  it 'returns a converted string aBCdeF' do
    expect(capitalize('abcdef', [1, 2, 5, 100])).to eq('aBCdeF')
  end

  it 'returns a converted string abRacaDabRA' do
    expect(capitalize('abracadabra', [2, 6, 9, 10])).to eq('abRacaDabRA')
  end

  it 'returns a converted string Indexinglessons' do
    expect(capitalize('indexinglessons', [0])).to eq('Indexinglessons')
  end
end
