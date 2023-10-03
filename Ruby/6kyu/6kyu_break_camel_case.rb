# frozen_string_literal: true

require 'rspec'

# Complete the solution so that the function will break up camel casing, using a space between words.
# Example :

# 'camelCasing'  =>  'camel Casing'
# 'identifier'   =>  'identifier'
# ''             =>  ''

# The best solution from codewars
# def solution(string)
#   string.gsub /([A-Z])/, ' \1'
# end

def solution(string)
  string.split(/(?=[A-Z])/).join(' ')
end

p solution('camelCasingTest')

describe '#array_diff' do
  it 'returns a new splited string' do
    expect(solution('camelCasingTest')).to eq('camel Casing Test')
  end

  it 'returns the same string' do
    expect(solution('camel')).to eq('camel')
  end

  it 'returns an empty string' do
    expect(solution('')).to eq('')
  end
end
