# frozen_string_literal: true

require 'rspec'

# You probably know the "like" system from Facebook and other pages. People can "like" blog posts,
# pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement a function likes :: [String] -> String, which must take in input array, containing
# the names of people who like an item. It must return the display text as shown in the examples:

# likes([]) => 'no one likes this'
# likes(['Peter']) => 'Peter likes this'
# likes(['Jacob', 'Alex']) => 'Jacob and Alex like this'
# likes(['Max', 'John', 'Mark']) => 'Max, John and Mark like this'
# likes(['Alex', 'Jacob', 'Mark', 'Max']) =>  'Alex, Jacob and 2 others like this'

# For 4 or more names, the number in and 2 others simply increases.

# The best practice from Codewars. Any way, I don't like this solition.
# def likes(names)
#   case names.size
#   when 0
#     "no one likes this"
#   when 1
#     "#{names[0]} likes this"
#   when 2
#     "#{names[0]} and #{names[1]} like this"
#   when 3
#     "#{names[0]}, #{names[1]} and #{names[2]} like this"
#   else
#     "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
#   end
# end

def likes(names)
  first_names = names[0..1].join(', ')
  return 'no one likes this' if names.empty?
  return "#{names[0]} likes this" if names.size == 1
  return "#{names[0]} and #{names[1]} like this" if names.size == 2
  return "#{first_names} and #{names[2]} like this" if names.size == 3
  "#{first_names} and #{names.size - 2} others like this"
end

p likes(%w[Alex Bob Peter Mike])

describe '#likes' do
  it 'returns the string \'no one likes this\' if an array is empty' do
    expect(likes([])).to eq('no one likes this')
  end

  it 'returns the string \'Peter likes this\' if an array contains one element' do
    expect(likes(%w[Peter])).to eq('Peter likes this')
  end

  it 'returns the string \'Peter and Alex like this\' if an array contains two elements' do
    expect(likes(%w[Peter Alex])).to eq('Peter and Alex like this')
  end

  it 'returns the string \'Peter, Alex and Max like this\' if an array contains three elements' do
    expect(likes(%w[Peter Alex Max])).to eq('Peter, Alex and Max like this')
  end

  it 'returns the string \'Peter, Alex and 2 others like this\' if an array contains three elements' do
    expect(likes(%w[Peter Alex Max Bob])).to eq('Peter, Alex and 2 others like this')
  end
end
