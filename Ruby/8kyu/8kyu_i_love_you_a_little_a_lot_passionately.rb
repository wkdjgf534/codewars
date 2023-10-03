# frozen_string_literal: true

require 'rspec'

# Who remembers back to their time in the schoolyard, when girls would take a flower
# and tear its petals, saying each of the following phrases each time a petal was torn:

#  'I love you'
#  'a little'
#  'a lot'
#  'passionately'
#  'madly'
#  'not at all'

# When the last petal was torn there were cries of excitement, dreams,
# surging thoughts and emotions.

# Your goal in this kata is to determine which phrase the girls would say for a flower
# of a given number of petals, where nb_petals > 0.

EMOTIONS = ['I love you',
            'a little',
            'a lot',
            'passionately',
            'madly',
            'not at all'].freeze

def how_much_i_love_you(nb_petals)
  EMOTIONS[(nb_petals - 1) % 6]
end

p how_much_i_love_you(7)

describe '#how_much_i_love_you' do
  it 'returns \'a lot\'' do
    expect(how_much_i_love_you(3)).to eq('a lot')
  end

  it 'returns \'i love you\'' do
    expect(how_much_i_love_you(7)).to eq('I love you')
  end
end
