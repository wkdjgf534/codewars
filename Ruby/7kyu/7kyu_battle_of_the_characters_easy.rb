# frozen_string_literal: true

require 'rspec'

# Description:

# Groups of characters decided to make a battle. Help them to figure out which group is more powerful.
# Create a function that will accept 2 variables and return the one who's stronger.

# Rules:

# Each character have its own power: A = 1, B = 2, ... Y = 25, Z = 26
# Only capital chatacters can and will participate a battle.
# Only two groups to a fight.
# Group whose total power (A + B + C + ...) is bigger wins.
# If the powers are equal, it's a tie.

# Examples:

# battle("ONE", "TWO") => "TWO"`
# battle("ONE", "NEO") => "Tie!"

# The best solution from Codewars
# def battle(x, y)
#   # <=> - Spaceship operator returns -1, 0, 1
#   # -1 - y
#   # 0 - Tie!
#   # 1 - x
#   ['Tie!', x, y][x.sum <=> y.sum]
# end

def battle(x, y)
  # It generates hash
  letters = ('A'..'Z').zip(1..26).to_h
  our_letters = [x, y].map(&:upcase)
  result = []
  our_letters.each { |letter| result << letter.chars.map { |key| letters[key] }.sum }
  return 'Tie!' if result[0] == result[1]
  result[0] > result[1] ? x : y
end

p battle('one', 'two')

describe '#battle' do
  it 'comapres two strings and returns "TWO"' do
    expect(battle('ONE', 'TWO')).to eq('TWO')
  end

  it 'compares two strings and returns "TIE!"' do
    expect(battle('ONE', 'NEO')).to eq('Tie!')
  end
end
