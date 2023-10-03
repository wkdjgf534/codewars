# frozen_string_literal: true

require 'rspec'

# Personalized greeting
# Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
# Use conditionals to return the proper message:

# case 	              return
# name equals owner 	'Hello boss'
# otherwise 	        'Hello guest'

# The best solution from Codewars
# def greet(name, owner)
#   name == owner.capitalize ? 'Hello boss' : 'Hello guest'
# end

def greet(name, owner)
  person = name == owner.capitalize ? 'boss' : 'guest'
  "Hello #{person}"
end

p greet('Peter', 'peter')

describe '#greet' do
  it 'returns "Hello boss"' do
    expect(greet('Peter', 'Peter')).to eq('Hello boss')
  end

  it 'returns "Hello boss"' do
    expect(greet('Peter', 'peter')).to eq('Hello boss')
  end

  it 'returns "Hello guest"' do
    expect(greet('Peter', 'John')).to eq('Hello guest')
  end
end
