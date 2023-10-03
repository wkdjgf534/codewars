# frozen_string_literal: true

require 'rspec'

# You are trying to put a hash in ruby or an object in javascript or java into an array,
# but it always returns error, solve it and keep it as simple as possible!

def push_hash(hash)
  items = []
  items << hash
end

p push_hash(a: 'b', c: 'd')

describe '#push_hash' do
  it 'pushes a hash into an array' do
    expect(push_hash(a: 'b', c: 'd')).to match_array([a: 'b', c: 'd'])
  end
end
