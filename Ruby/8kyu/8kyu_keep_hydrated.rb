# frozen_string_literal: true

require 'rspec'

# Nathan loves cycling.
# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
# You get given the time in hours and you need to return the number of litres Nathan will drink,
# rounded to the smallest value.

# For example:
# time = 3 ----> litres = 1
# time = 6.7---> litres = 3
# time = 11.8--> litres = 5

WATER_PER_HOUR = 0.5

def litres(time)
  (time * WATER_PER_HOUR).floor
end

p litres(11.5)

describe '#litres' do
  it 'returns a total amount of liters for period of time' do
    expect(litres(11.5)).to eq(5)
  end
end
