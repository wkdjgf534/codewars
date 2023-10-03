# frozen_string_literal: true

require 'rspec'

# Create a combat function that takes the player's current health and the amount of damage recieved,
# and returns the player's new health. Health can't be less than 0.

# A good solution from Codewars
# def combat(health, damage)
#   [health - damage, 0].max
# end

def combat(health, damage)
  health < damage ? 0 : health - damage
end

p combat(35, 55)

describe '#combat' do
  it 'returns a correct amount of damage' do
    expect(combat(100, 5)).to eq(95)
  end

  it 'returns a correct amount of damage if health less than damage' do
    expect(combat(20, 35)).to eq(0)
  end
end
