# frozen_string_literal: true

require 'rspec'

# Create a method to_h that accepts a list, and converts it to a hash of key-value pairs.
# Here's a simple example:

# animals = [["cat", "dog"], ["duck", "cow"]]
# to_h(animals) => {"cat" => "dog", "duck" => "cow"}
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-to-h

def to_h(list)
  list.to_h
end

p to_h([%w[cat doc], %w[duck donkey]])

describe 'to_h' do
  it 'returns a hash from two-dimensional array' do
    expect(to_h([%w[cat doc], %w[duck donkey]])).to eq('cat' => 'doc',
                                                       'duck' => 'donkey')
  end
end
