# frozen_string_literal: true

require 'rspec'

# Write function makeUpperCase.

def make_upper_case(str)
  str.upcase
end

p make_upper_case('hello')

describe '#make_upper_case' do
  it 'transforms all letters to uppercase in a string' do
    expect(make_upper_case('hello')).to eq('HELLO')
  end
end
