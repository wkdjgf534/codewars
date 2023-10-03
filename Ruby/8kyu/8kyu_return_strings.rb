# frozen_string_literal: true

require 'rspec'

# Make a function that will return a greeting statement that uses an input.
# Your program should return, "Hello, <name> how are you doing today?".

def greet(name) = "Hello, #{name} how are you doing today?"

p greet('Eugene')

describe '#greet' do
  it 'prints greeting string with a name' do
    expect(greet('Ryan')).to eq('Hello, Ryan how are you doing today?')
  end
end
