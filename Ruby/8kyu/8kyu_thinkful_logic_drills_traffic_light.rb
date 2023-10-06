# frozen_string_literal: true

require 'rspec'

# You're writing code to control your town's traffic lights. You need a function to handle each change from green,
# to yellow, to red, and then to green again.

# Complete the function that takes a string as an argument representing the current state of the light and
# returns a string representing the state the light should change to.

# For example

# update_light('green') => 'yellow'.

def update_light(current)
  colors = {
    'green' => 'yellow',
    'yellow' => 'red',
    'red' => 'green'
  }.freeze

  colors[current]
end

p update_light('green')

describe '#update_light' do
  it 'returns yellow if traffic light is green' do
    expect(update_light('green')).to eq('yellow')
  end

  it 'returns red if traffic light is yellow' do
    expect(update_light('yellow')).to eq('red')
  end

  it 'returns green if traffic light is red' do
    expect(update_light('red')).to eq('green')
  end
end
