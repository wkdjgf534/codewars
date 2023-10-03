# frozen_string_literal: true

require 'rspec'

# Hey awesome programmer!
# You've got much data to manage and of course you use zero-based and non-negative ID's
# to make each data item unique!
# Therefore you need a method, which returns the smallest unused ID for your next new data item...
# Note: The given array of used IDs may be unsorted. For test reasons there may be duplicate IDs,
# but you don't have to find or remove them!

def next_id(arr)
  arr.uniq!
  counter = 0
  counter += 1 while arr.include?(counter)
  counter
end

p next_id([5, 4, 3, 3, 2, 1, 1, 1, 1])
p next_id([0, 1, 1, 2, 2, 3, 5, 6, 7])

describe '#next_id' do
  it 'returns a new unused id' do
    expect(next_id([0, 1, 2, 0])).to eq(3)
  end

  it 'returns zero if an array is empty' do
    expect(next_id([])).to eq(0)
  end
end
