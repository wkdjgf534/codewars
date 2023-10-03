# frozen_string_literal: true

require 'rspec'

# Rock Paper Scissors
# Let's play! You have to return which player won! In case of a draw return Draw!.

# Examples:
# rps('scissors','paper') // Player 1 won!
# rps('scissors','rock') // Player 2 won!
# rps('paper','paper') // Draw!

# Two good solutions from Codewars.
# def rps(p1, p2)
#   beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
#
#   if p1 == p2
#     "Draw!"
#   elsif beatmap[p1] == p2
#     "Player 1 won!"
#   else
#     "Player 2 won!"
#   end
# end

# Good solution from
# def rps(p1, p2)
#   return 'Draw!' if p1 == p2
#
#   'rockpaperscissorsrock'.include?("#{p1}#{p2}") ? 'Player 2 won!' : 'Player 1 won!'
# end

def rps(p1, p2)
  return 'Draw!' if p1 == p2

  if (p1 == 'paper' && p2 == 'rock') || (p1 == 'rock' && p2 == 'scissors') || (p1 == 'scissors' && p2 == 'paper')
    'Player 1 won!'
  else
    'Player 2 won!'
  end
end

p rps('paper', 'scissors')

describe '#rps' do
  it 'returns \'Draw!\'' do
    expect(rps('rock', 'rock')).to eq('Draw!')
  end

  it 'returns \'Player 1 won!\'' do
    expect(rps('paper', 'rock')).to eq('Player 1 won!')
  end

  it 'returns \'Player 2 won!\'' do
    expect(rps('rock', 'paper')).to eq('Player 2 won!')
  end
end
