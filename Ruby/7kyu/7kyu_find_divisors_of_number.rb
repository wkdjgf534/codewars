# frozen_string_literal: true

require 'rspec'

# Find the number of divisors of a positive integer n.

# Random tests go up to n = 500000.
# Examples

# divisors(4) => 3 # 1, 2, 4
# divisors(5) => 2 # 1, 5
# divisors(12) => 6 # 1, 2, 3, 4, 6, 12
# divisors(30) => 8 # 1, 2, 3, 5, 6, 10, 15, 30

# Two good solutions from Codewars
# def divisors(number)
#   (1..number).count { |d| (number % d).zero? }
# end

# def divisors(number)
#   (1..number).select { |int| (number % int).zero? }.count
# end

def divisors(number)
  array = []
  (1..number).each { |n| array << n if (number % n).zero? }
  array.count
end

p divisors(10)

describe '#divisors' do
  it 'returns the correct amount of times when 10 can be devided' do
    expect(divisors(10)).to eq(4)
  end
end
