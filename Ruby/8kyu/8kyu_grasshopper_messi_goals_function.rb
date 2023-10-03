# frozen_string_literal: true

require 'rspec'

# Messi goals function

# Messi is a soccer player with goals in three leagues:

  # LaLiga
  # Copa del Rey
  # Champions

# Complete the function to return his total number of goals in all three leagues.

# Note: the input will always be valid.
# For example:
# 5, 10, 2  =  17

# The best solution from codewars
# def goals(*goals)
#   goals.sum
# end

def goals (la_liga_goals, copa_del_rey_goals, champions_league_goals)
  la_liga_goals + copa_del_rey_goals + champions_league_goals
end

p goals(11, 22, 33)

describe '#goals' do
  it 'returns sum of goals' do
    expect(goals(10, 10, 20)).to eq(40)
  end

  it 'returns zero' do
    expect(goals(0, 0, 0)).to eq(0)
  end
end
