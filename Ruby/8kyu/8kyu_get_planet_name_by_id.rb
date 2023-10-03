# frozen_string_literal: true

require 'rspec'

# The function is not returning the correct values. Can you figure out why?
# get_planet_name(3) # should return 'Earth'

def get_planet_name(id)
  planets = { 1 => 'Mercury', 2 => 'Venus', 3 => 'Earth', 4 => 'Mars',
              5 => 'Jupiter', 6 => 'Saturn', 7 => 'Uranus', 8 => 'Neptune' }

  planets[id]
end

p get_planet_name(3)

describe '#get_planet_name' do
  it 'returns name of the planet' do
    expect(get_planet_name(3)).to eq('Earth')
  end
end
