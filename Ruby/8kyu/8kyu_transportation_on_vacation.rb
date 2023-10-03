# frozen_string_literal: true

require 'rspec'

# After a hard quarter in the office you decide to get some rest on a vacation. So you will book a flight
# for you and your girlfriend and try to leave all the mess behind you.

# You will need a rental car in order for you to get around in your vacation.
# The manager of the car rental makes you some good offers.

# Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total.
# Alternatively, if you rent the car for 3 or more days, you get $20 off your total.

# Write a code that gives out the total amount for different days(d).

def rental_car_cost(days)
  day_cost = days * 40
  return day_cost if days < 3

  days >= 7 ? day_cost - 50 : day_cost - 20
end

p rental_car_cost(3)

describe '#rental_car_cost' do
  it 'returns the total amount of money if you rent a car less than 3 days' do
    expect(rental_car_cost(1)).to eq(40)
  end

  it 'returns the total amount of money with the discount if you rent a car more than 3 days' do
    expect(rental_car_cost(3)).to eq(100)
  end

  it 'returns the total amount of money with the discount if you rent a car more than 7 days' do
    expect(rental_car_cost(7)).to eq(230)
  end
end
