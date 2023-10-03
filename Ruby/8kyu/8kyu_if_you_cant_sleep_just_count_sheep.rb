# frozen_string_literal: true

require 'rspec'

# If you can't sleep, just count sheep!!
# Task:
# Given a non-negative integer, 3 for example, return a string with a murmur:
# '1 sheep...2 sheep...3 sheep...'. Input will always be valid, i.e. no negative integers.

def count_sheep(num)
  (1..num).map { |index| "#{index} sheep..." }.join
end

p count_sheep(3)

describe '#count_sheep' do
  it 'returns number of sheep' do
    expect(count_sheep(2)).to eq('1 sheep...2 sheep...')
  end
end
