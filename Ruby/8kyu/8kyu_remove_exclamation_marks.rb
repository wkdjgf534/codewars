# frozen_string_literal: true

require 'rspec'

# Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

# The good solution form codewars
# def remove_exclamation_marks(s)
#   s.delete('!')
# end

def remove_exclamation_marks(str)
  str.tr('!', '')
end

p remove_exclamation_marks('Hi! Hello!')

describe '#remove_exclamation_marks' do
  it 'returns a new string without exclamation_marks' do
    expect(remove_exclamation_marks('Hi! Hello!')).to eq('Hi Hello')
  end
end
