# frozen_string_literal: true

require 'rspec'

# In this kata, we're going to create the function nato that takes a word and
# returns a string spells the word using the NATO phonetic alphabet.

# There should be a space between each word in the returned string, and the first
# letter of each word should be capitalized.

# For those of you that don't want your fingers to bleed, this kata already has
# a dictionary typed out for you.

# nato('Banana') = 'Bravo Alpha November Alpha November Alpha'

def nato(word)
  letters = { 'A' => 'Alpha', 'B' => 'Bravo', 'C'=> 'Charlie',
              'D' => 'Delta', 'E' => 'Echo', 'F' => 'Foxtrot',
              'G' => 'Golf', 'H' => 'Hotel', 'I' => 'India',
              'J' => 'Juliett', 'K' => 'Kilo', 'L' => 'Lima',
              'M' => 'Mike', 'N' => 'November', 'O' => 'Oscar',
              'P' => 'Papa', 'Q' => 'Quebec', 'R' => 'Romeo',
              'S' => 'Sierra', 'T' => 'Tango', 'U' => 'Uniform',
              'V' => 'Victor', 'W' => 'Whiskey', 'X' => 'X-ray',
              'Y' => 'Yankee', 'Z' => 'Zulu' }.freeze

  word.chars.map { |n| letters[n.capitalize] }.join(' ')
end

p nato('Ban')

describe '#nato' do
  it 'returns a string instead of letters' do
    expect(nato('Ban')).to eq('Bravo Alpha November')
  end
end
