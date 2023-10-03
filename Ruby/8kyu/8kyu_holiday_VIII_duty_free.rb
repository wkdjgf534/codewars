# frozen_string_literal: true

require 'rspec'

# The purpose of this kata is to work out just how many bottles of duty free whiskey you would have to buy such that
# the saving over the normal high street price would effectively cover the cost of your holiday.

# You will be given the high street price (normPrice), the duty free discount (discount) and the cost of the holiday.

# For example, if a bottle cost £10 normally and the discount in duty free was 10%, you would save £1 per bottle.
# If your holiday cost £500, the answer you should return would be 500.

# All inputs will be integers. Please return an integer. Round down.

def duty_free(price, discount, holiday_cost)
  # floor - http://ruby-doc.org/core-2.5.1/Float.html#method-i-floor
  # Returns the largest number less than or equal to float with a precision of ndigits decimal digits (default: 0).
  (holiday_cost / (price * discount / 100.0)).floor # => 294.11764705882354 => 294
end

p duty_free(17, 10, 500)

describe '#duty_free' do
  it 'returns the total amount of bottles' do
    expect(duty_free(17, 10, 500)).to eq(294)
  end
end
