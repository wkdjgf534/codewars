# frozen_string_literal: true

require 'rspec'

# Debugging sayHello function

# The starship Enterprise has run into some problem when creating a program to greet everyone as they come aboard.
# It is your job to fix the code and get the program working again!

# Example output:

# Hello, Mr. Spock

def say_hello(name)
  "Hello, #{name}"
end

p say_hello('Spok')

describe '#say_hello' do
  it 'returns a greeting string' do
    expect(say_hello('Spok')).to eq('Hello, Spok')
  end
end
