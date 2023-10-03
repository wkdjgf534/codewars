# frozen_string_literal: true

require 'rspec'

#  In this kata, you must create a digital root function.

# A digital root is the recursive sum of all the digits in a number. Given n,
# take the sum of the digits of n. If that value has two digits, continue reducing in this way until
# a single-digit number is produced. This is only applicable to the natural numbers.

# Here's how it works (Ruby example given):

# digital_root(16) => 1 + 6 => 7
# digital_root(942) => 9 + 4 + 2 => 15 ... => 1 + 5 => 6
# digital_root(132189) => 1 + 3 + 2 + 1 + 8 + 9 => 24 ... => 2 + 4 => 6

def digital_root(number)
  number = number.digits.sum
  number > 9 ? digital_root(number) : number
end

p digital_root(456)

describe '#digital_root' do
  it 'returns the sum of last numbers' do
    expect(digital_root(16)).to eq(7)
  end
end
