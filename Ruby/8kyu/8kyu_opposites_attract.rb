# frozen_string_literal: true

require 'rspec'

# Timmy & Sarah think they are in love, but around where they live, they will only know once they pick a flower each.
# If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

# Write a function that will take the number of petals of each flower and return true if they are in
# love and false if they aren't.

def lovefunc(flower1, flower2)
  (flower1 +  flower2).odd?
end

p lovefunc(2, 2)

describe '#lovefunc' do
  it 'returns true if the total amount of petals on two flowers is odd' do
    expect(lovefunc(2, 4)).to be_falsey
  end

  it 'returns false if the total amount of petals on two flowers is even' do
    expect(lovefunc(1, 2)).to be_truthy
  end
end
