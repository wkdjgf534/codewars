# frozen_string_literal: true

require 'rspec'

# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for
# the last two names, which should be separated by an ampersand.

# Example:

# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) => 'Bart, Lisa & Maggie'
# list([ {name: 'Bart'}, {name: 'Lisa'} ]) => 'Bart & Lisa'
# list([ {name: 'Bart'} ]) => 'Bart'
# list([]) => ''

# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.
# def list(names)
#   return '' if names.empty?

#   names.map(&:values).join(', ').reverse.sub(',','& ').reverse
# end

# def list(names)
#   return '' if names.empty?

#   *prefix, last = names.map { |h| h[:name] }
#   prefix.empty? ? last.to_s : "#{prefix.join(', ')} & #{last}"
# end

def list(names)
  return '' if names.empty?

  array_names = names.map(&:values).flatten
  if array_names.size > 1
    last_name = array_names.pop
    "#{array_names.join(', ')} & #{last_name}"
  else
    array_names.join
  end
end

p list([{ name: 'Bart' }, { name: 'Lisa' }, { name: 'Maggie' }])

describe '#list' do
  it 'returns a string Bart, Lisa & Maggie' do
    expect(list([{ name: 'Bart' }, { name: 'Lisa' }, { name: 'Maggie' }])).to eq('Bart, Lisa & Maggie')
  end

  it 'returns a string Bart & Lisa' do
    expect(list([{ name: 'Bart' }, { name: 'Lisa' }])).to eq('Bart & Lisa')
  end

  it 'returns a string Bart' do
    expect(list([{ name: 'Bart' }])).to eq('Bart')
  end

  it 'returns an empty sstring' do
    expect(list('')).to eq('')
  end
end
