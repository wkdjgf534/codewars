# frozen_string_literal: true

require 'rspec'

# You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
# If it is a square, return its area. If it is a rectangle, return its perimeter.

# area_or_perimeter(6, 10) --> 32
# area_or_perimeter(3, 3) --> 9

# NOTE: for the purposes of this kata you will assume that it is a square if its length and width are equal,
# otherwise it is a rectangle.

def area_or_perimeter(length, width)
  length == width ? length * width : 2 * (length + width)
end

p area_or_perimeter(0, 0)

describe '#how_many_dalmatians' do
  it "returns rectangle's perimeter" do
    expect(area_or_perimeter(6, 10)).to eq(32)
  end

  it "returns square's area" do
    expect(area_or_perimeter(3, 3)).to eq(9)
  end

  it 'returns zero' do
    expect( area_or_perimeter(0, 0)).to eq(0)
  end
end
