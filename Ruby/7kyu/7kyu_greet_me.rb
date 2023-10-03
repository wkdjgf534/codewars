# frozen_string_literal: true

require 'rspec'

# Write a method that takes one argument as name and then greets that name,
#  capitalized and ends with an exclamation point.

# Example:

# greet("maya") => returns "Hello Maya!"
# greet("JACK") => "Hello Jack!"

def greet(name)
  "Hello #{name.capitalize}!"
end

p greet('MARY')

describe '#greet' do
  it 'return a new string \'Hello Mary\'`' do
    expect(greet('mary')).to eq('Hello Mary!')
  end
end
