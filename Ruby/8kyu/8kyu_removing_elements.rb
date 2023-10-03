# frozen_string_literal: true

require 'rspec'

# Take an array and remove every second element out of that array. Always keep the first element and start removing with the next element.
# Example:
# my_arr = ['Keep', 'Remove', 'Keep', 'Remove', 'Keep', ...]
# None of the arrays will be empty, so you don't have to worry about that!

def remove_every_other(arr)
  arr.select.with_index { |_elem, index| index.even? }
end

p remove_every_other(['Hello', 'Goodbye', 'Hello Again'])

describe '#remove_every_other' do
  it 'returns odd elements from an array' do
    expect(remove_every_other(['Hello', 'Goodbye', 'Hello Again'])).to match_array(['Hello', 'Hello Again'])
  end
end
