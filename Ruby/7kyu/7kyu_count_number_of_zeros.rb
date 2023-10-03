# frozen_string_literal: true

require 'rspec'

# Create an algorithm to count the number of zeros that appear between 1 and N.
# Examples:
# There are 2 zeros from 1 to 20: 10, 20
# There are 11 zeros from 1 to 100: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
# count_zeros(10) => 1
# count_zeros(100) => 11
# count_zeros(200) => 31

# def count_zeros(num)
#   (10..num).to_a.join.count('0')
# end

def count_zeros(num)
  counter = 0
  (10..num).each { |n| counter += n.to_s.count('0') }
  counter
end

p count_zeros(200)

describe '#count_zeros' do
  it 'returns a total amount of numbers with zeros' do
    expect(count_zeros(200)).to eq(31)
  end
end
