# frozen_string_literal: true

require 'rspec'

# Your task is to sort a given string. Each word in the string will contain a single number.
# This number is the position the word should have in the result.

# Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
# If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

# Examples
# 'is2 Thi1s T4est 3a'  =>  'Thi1s is2 3a T4est'
# '4of Fo1r pe6ople g3ood th5e the2'  =>  'Fo1r the2 g3ood 4of th5e pe6ople'
# ''  =>  ''

# Two best solutions from Codewars
# def order(words)
#   words.split.sort_by { |w| w.chars.min }.join(' ')
# end

# def order(words)
#   words.scan(/\w+/).sort_by { |w| w[/\d/] }.join(' ')
# end

def order(words)
  group_string = words.split(' ').group_by { |x| x.scan(/\d/) }
  counter = 1
  result = []
  group_string.size.times do
    result << group_string[[counter.to_s]]
    counter += 1
  end
  result.join(' ')
end

p order('4of Fo1r pe6ople g3ood th5e the2')

describe '#order' do
  it 'returns a sorted string' do
    expect(order('4of Fo1r pe6ople g3ood th5e the2')).to eq('Fo1r the2 g3ood 4of th5e pe6ople')
  end

  it 'returns a empty string' do
    expect(order('')).to eq('')
  end
end
