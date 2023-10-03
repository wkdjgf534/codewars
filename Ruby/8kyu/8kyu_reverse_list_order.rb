# frozen_string_literal: true

require 'rspec'

# In this kata you will create a function that takes in a list and returns a list with the reverse order.

# Examples
# reverse_list([1,2,3,4]) => [4,3,2,1]
# reverse_list([3,1,5,4]) => [4,5,1,3]

def reverse_list(list)
  list.reverse
end

p reverse_list([3, 1, 5, 4])

describe '#reverse_list' do
  it 'returns an reversed array' do
    expect(reverse_list([3, 1, 5, 4])).to match_array([4, 5, 1, 3])
  end
end
