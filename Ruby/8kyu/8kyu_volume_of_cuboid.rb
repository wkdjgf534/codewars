# frozen_string_literal: true

require 'rspec'

# Bob needs a fast way to calculate the volume of a cuboid with three values:
# length, width and the height of the cuboid. Write a function to help Bob with
# this calculation.

def get_volume_of_cuboid(length, width, height)
  length * width * height
end

p get_volume_of_cuboid(2, 3, 4)

describe '#get_volume_of_cuboid' do
  it 'returns a volume of a cuboid' do
    expect(get_volume_of_cuboid(2, 3, 4)).to eq(24)
  end
end
