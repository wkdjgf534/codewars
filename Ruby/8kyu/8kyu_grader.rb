# frozen_string_literal: true

require 'rspec'

# Create a function that takes a number as an argument and returns a grade based on that number.
# Score 	Grade
# Anything greater than 1 or less than 0.6 	'F'
# 0.9 or greater 'A'
# 0.8 or greater 'B'
# 0.7 or greater 'C'
# 0.6 or greater 'D'

# Examples:
# grader(0.9) == 'A'
# grader(0.3) == 'F'
# grader(234) == 'F'
# grader(0.75) == 'C'

def grader(score)
  return 'F' if score < 0.6 || score > 1
  return 'D' if score < 0.7
  return 'C' if score < 0.8

  score < 0.9 ? 'B' : 'A'
end

p grader(0.7)

describe '#grader' do
  it 'returns letter \'F\'' do
    expect(grader(2)).to eq('F')
  end

  it 'returns letter \'C\'' do
    expect(grader(0.71)).to eq('C')
  end

  it 'returns letter \'B\'' do
    expect(grader(0.8)).to eq('B')
  end

  it 'returns letter \'A\'' do
    expect(grader(0.95)).to eq('A')
  end
end
