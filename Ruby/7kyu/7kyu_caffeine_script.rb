# frozen_string_literal: true

require 'rspec'

# Complete the function caffeineBuzz, which takes a non-zero integer as it's one argument.
# If the integer is divisible by 3, return the string "Java".
# If the integer is divisible by 3 and divisible by 4, return the string "Coffee"
# If the integer is one of the above and is even, add "Script" to the end of the string.
# Otherwise, return the string "mocha_missing!"

# caffeine_buzz(1)   => "mocha_missing!"
# caffeine_buzz(3)   => "Java"
# caffeine_buzz(6)   => "JavaScript"
# caffeine_buzz(12)  => "CoffeeScript"

def caffeine_buzz(num)
  return 'CoffeeScript' if (num % 12).zero?
  return 'JavaScript' if (num % 6).zero?

  (num % 3).zero? ? 'Java' : 'mocha_missing!'
end

p caffeine_buzz(3)

describe '#caffeine_buzz' do
  it 'returns the word \'CoffeScript\'' do
    expect(caffeine_buzz(12)).to eq('CoffeeScript')
  end

  it 'returns the word \'JavaScript\'' do
    expect(caffeine_buzz(6)).to eq('JavaScript')
  end

  it 'returns the word \'Java\'' do
    expect(caffeine_buzz(3)).to eq('Java')
  end

  it 'returns the phrase \'mocha_missing!\'' do
    expect(caffeine_buzz(1)).to eq('mocha_missing!')
  end
end
