# frozen_string_literal: true

require 'rspec'

# In this little assignment you are given a string of space separated numbers,
# and have to return the highest and lowest number.

# Example:

# high_and_low("1 2 3 4 5")  => "5 1"
# high_and_low("1 2 -3 4 5") => "5 -3"
# high_and_low("1 9 3 4 -5") => "9 -5"

# Notes:
# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

# Two good solutions form Codewars
# def high_and_low(numbers)
#   numbers.split.map(&:to_i).minmax.reverse.join(' ')
# end

# def high_and_low(numbers)
#   numbers = numbers.split.map(&:to_i)
#   "#{numbers.max} #{numbers.min}"
# end

def high_and_low(numbers)
  min_max = numbers.split(' ').map!(&:to_i)
  min_max.minmax.reverse.join(' ')
end

p high_and_low('4 5 29 54 4 0 -214 542 -64 1 -3 6 -6')

describe '#high_and_low' do
  it 'finds min and max values in the string' do
    expect(high_and_low('1 3 -10 12 44 2')).to eq('44 -10')
  end
end
