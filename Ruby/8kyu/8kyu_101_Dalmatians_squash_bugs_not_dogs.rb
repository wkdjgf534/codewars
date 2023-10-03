# frozen_string_literal: true

require 'rspec'

# Your friend has been out shopping for puppies (what a time to be alive!)...
# He arrives back with multiple dogs, and you simply do not know how to respond!

# By repairing the function provided, you will find out exactly how you should respond,
# depending on the number of dogs he has.

# The number of dogs will always be a number and there will always be at least 1 dog.

def how_many_dalmatians(num)
  dogs = ['Hardly any', 'More than a handful!', 'Woah that\'s a lot of dogs!', '101 DALMATIONS!!!']
  if num.between?(1, 50)
    num <= 10 ? dogs[0] : dogs[1]
  elsif num.between?(51, 101)
    num <= 100 ? dogs[2] : dogs[3]
  end
end

p how_many_dalmatians(2)

describe '#how_many_dalmatians' do
  it 'returns a string \'Hardly any\' if you have 2 puppies' do
    expect(how_many_dalmatians(2)).to eq('Hardly any')
  end

  it 'returns a string \'More than a handful!\' if you have 48 puppies' do
    expect(how_many_dalmatians(48)).to eq('More than a handful!')
  end

  it 'returns a string \'Woah that\'s a lot of dogs!\' if you have 52 puppies' do
    expect(how_many_dalmatians(52)).to eq('Woah that\'s a lot of dogs!')
  end

  it 'returns a string \'101 DALMATIONS!!!\' if you have 101 puppies' do
    expect(how_many_dalmatians(101)).to eq('101 DALMATIONS!!!')
  end
end
