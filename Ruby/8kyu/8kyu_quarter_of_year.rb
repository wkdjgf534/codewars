# frozen_string_literal: true

require 'rspec'

# Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.
# For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter;
# and month 11 (November), is part of the fourth quarter.

def quarter_of(month)
  (month / 3.0).ceil
end

p quarter_of(3)


describe '#unusual_five' do
  it 'returns first quater if second month' do
    expect(quarter_of(2)).to eq(1)
  end

  it 'returns second quater if sixth month' do
    expect(quarter_of(6)).to eq(2)
  end
end
