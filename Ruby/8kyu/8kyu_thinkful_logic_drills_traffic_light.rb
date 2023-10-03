# frozen_string_literal: true

require 'rspec'

# You're writing code to control your town's traffic lights. You need a function to handle each change from green,
# to yellow, to red, and then to green again.

# Complete the function that takes a string as an argument representing the current state of the light and
# returns a string representing the state the light should change to.

# For example

# update_light('green') => 'yellow'.

# One of the best solutions from codewars
# def update_light(current)
#   { 'green' => 'yellow', 'yellow' => 'red', 'red' => 'green' }[current]
# end

# def update_light(current)
#   a = %w[green yellow red green]
#   # index - http://ruby-doc.org/core-2.5.1/Array.html#method-i-index
#   # a.index(current) - return index of current color
#   a[a.index(current) + 1]
# end

def update_light(current)
  case current
  when 'green' then 'yellow'
  when 'yellow' then 'red'
  when 'red' then 'green'
  end
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
