# frozen_string_literal: true

require 'rspec'

# This program tests the life of an evaporator containing a gas.
# We know the content of the evaporator (content in ml), the percentage of foam or
# gas lost every day (evap_per_day) and the threshold (threshold) in percentage
# beyond which the evaporator is no longer useful. All numbers are strictly positive.

# The program reports the nth day (as an integer) on which the evaporator will be out of use.

# Note : Content is in fact not necessary in the body of the function "evaporator", you
# can use it or not use it, as you wish. Some people might prefer to reason with content,
# some other with percentages only. It's up to you but you must keep it as a parameter
# because the tests have it as an argument.

# The best solution from Codewars
# def evaporator(content, evap_per_day, threshold)
#   day = 1
#   percent = 100
#   day += 1 while (percent -= percent * evap_per_day / 100.0) > threshold
#   day
# end

def evaporator(content, evap_per_day, threshold)
  threshold_amount = threshold / 100.0
  cont = evap_per_day / 100.0

  (Math.log(threshold_amount) / Math.log(1 - cont)).ceil
end

p evaporator(10, 10, 10)

describe '#evaporator' do
  it 'returns an amount of days' do
    expect(evaporator(10, 10, 10)).to eq(22)
  end
end
