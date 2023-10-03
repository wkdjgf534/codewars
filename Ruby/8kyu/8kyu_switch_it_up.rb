# frozen_string_literal: true

require 'rspec'

# When provided with a number between 0-9, return it in words.

# Input :: 1

# Output :: "One".

# Try using "Switch" statements.

# This kata is meant for beginners. Rank and upvote to bring it out of beta

# A good code from Codewars
# def switch_it_up(number)
#   %w[Zero One Two Three Four Five Six Seven Eight Nine][number]
# end

NUMBER_TO_WORD = {
  0 => 'Zero',
  1 => 'One',
  2 => 'Two',
  3 => 'Three',
  4 => 'Four',
  5 => 'Five',
  6 => 'Six',
  7 => 'Seven',
  8 => 'Eight',
  9 => 'Nine'
}.freeze

def switch_it_up(number)
  NUMBER_TO_WORD[number]
end

p switch_it_up(2)

describe '#switch_it_up' do
  it 'returns the word \'one\' if send the number 1' do
    expect(switch_it_up(2)).to eq('Two')
  end

  it 'returns the word \'five\' if send the number 5' do
    expect(switch_it_up(5)).to eq('Five')
  end
end
