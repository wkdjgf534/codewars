# frozen_string_literal: true

require 'rspec'

# Create a function which answers the question "Are you playing banjo?".
# If your name starts with the letter "R" or lower case "r", you are playing banjo!

# The function takes a name as its only argument, and returns one of the following strings:

# name + " plays banjo"
# name + " does not play banjo"

# Names given care always valid strings.

def are_you_playing_banjo(name)
  # casecmp - https://ruby-doc.org/core-2.6/String.html#method-i-casecmp
  # "abcdef".casecmp("ABCDEF") => 0
  name[0].casecmp('r').zero? ? "#{name} plays banjo" : "#{name} does not play banjo"
end

p are_you_playing_banjo('Rikke')

describe '#are_you_playing_banjo' do
  it 'returns a new string \'Robert plays banjo\'' do
    expect(are_you_playing_banjo('Robert')).to eq('Robert plays banjo')
  end

  it 'returns a new string \'Martin does not play banjo\'' do
    expect(are_you_playing_banjo('Martin')).to eq('Martin does not play banjo')
  end
end
