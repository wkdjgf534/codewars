# frozen_string_literal: true

require 'rspec'

# Here we have a function that help us spam our hearty laughter.
# But is not working! I need you to find out why...
# Expected results:

# spam(1)  => "hue"
# spam(6)  => "huehuehuehuehuehue"
# spam(14) => "huehuehuehuehuehuehuehuehuehuehuehuehuehue"

def spam(number)
  'hue' * number
end

p spam(3)

describe '#spam' do
  it 'returns a new string' do
    expect(spam(3)).to eq('huehuehue')
  end
end
