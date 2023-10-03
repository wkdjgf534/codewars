# frozen_string_literal: true

require 'rspec'

# A hero is on his way to the castle to complete his mission. However, he's been told that the castle
# is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero
# has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of
# bullets and move forward to fight another specific given number of dragons, will he survive?

# Return True if yes, False otherwise :)

def hero(bullets, dragons)
  dragons * 2 <= bullets
end

p hero(10, 5)

describe '#hero' do
  it 'returns \'true\' if a hero will survive' do
    expect(hero(10, 5)).to be_truthy
  end

  it 'returns \'false\' if a hero won\'t survive' do
    expect(hero(10, 10)).to be_falsey
  end
end
