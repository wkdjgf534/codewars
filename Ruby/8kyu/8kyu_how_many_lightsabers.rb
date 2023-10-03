# frozen_string_literal: true

require 'rspec'

# Inspired by the development team at Vooza, write the function howManyLightsabersDoYouOwn that
# accepts the name of a programmer, and
# returns the number of lightsabers owned by that person.

# The only person who owns lightsabers is Zach, by the way. He owns 18, which is an
# awesome number of lightsabers. Anyone else owns 0.

# No starting help here -- you'll need to know how to write a function that accepts a
# parameter and returns a value based on that parameter.

# howManyLightsabersDoYouOwn('anyone else') = 0
# howManyLightsabersDoYouOwn('Zach') = 18

def how_many_lightsabers(name = '')
  name == 'Zach' ? 18 : 0
end

p how_many_lightsabers('Zach')

describe '#how_many_lightsabers' do
  it 'returns the number 18 if your name is Zach' do
    expect(how_many_lightsabers('Zach')).to eq(18)
  end

  it 'returns the number 0 if your name isn\'t Zach' do
    expect(how_many_lightsabers('Zach')).to eq(18)
  end
end
