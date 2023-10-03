# frozen_string_literal: true

require 'rspec'

# You take your son to the forest to see the monkeys. You know that there are a certain number there (n),
# but your son is too young to just appreciate the full number, he has to start counting them from 1.

# As a good parent, you will sit and count with him. Given the number (n), populate an array with
# all numbers up to and including that number, but excluding zero.

# For example, if n = 10:
# return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def monkey_count(num)
  (1..num).to_a
end

p monkey_count(10)

describe '#monkey_count' do
  it 'returns an array of numbers from 1 to 5' do
    expect(monkey_count(5)).to match_array([1, 2, 3, 4, 5])
  end
end
