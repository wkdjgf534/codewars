# frozen_string_literal: true

require 'rspec'

# Write simple .camelCase method (camel_case function in PHP, CamelCase in C# or camelCase in Java)
# for strings. All words must have their first letter capitalized without spaces.

# For instance:

# 'hello case'.camelcase => HelloCase
# 'camel case word'.camelcase => CamelCaseWord

# Don't forget to rate this kata! Thanks :)

class String
  def camelcase
    split(' ').map(&:capitalize).join
  end
end

p 'hello case'.camelcase

describe '.camelcase' do
  it 'returns a converted string' do
    expect('hello case'.camelcase).to eq('HelloCase')
  end

  it 'returns an empty string' do
    expect(''.camelcase).to eq('')
  end
end
