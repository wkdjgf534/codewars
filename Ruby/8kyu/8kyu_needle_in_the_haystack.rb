# frozen_string_literal: true

require 'rspec'

# Can you find the needle in the haystack?
# Write a function findNeedle() that takes an array full of junk but containing one "needle"
# After your function finds the needle it should return a message (as a string) that says:
# "found the needle at position " plus the index it found the needle, so:

# Python, Ruby & Elixir
# find_needle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])

# JavaScript & TypeScript
# findNeedle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])

# Java
# findNeedle(new Object[] {"hay", "junk", "hay", "hay", "moreJunk", "needle", "randomJunk"})

# should return 'found the needle at position 5'

def find_needle(haystack)
  position = haystack.index('needle')
  "found the needle at position #{position}"
end

p find_needle(['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false])

describe '#find_needle' do
  it 'returns a new string \'found the needle at position 3\'' do
    array = ['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false]
    expect(find_needle(array)).to eq('found the needle at position 3')
  end
end
