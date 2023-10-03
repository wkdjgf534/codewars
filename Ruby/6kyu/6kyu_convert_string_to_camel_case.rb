# frozen_string_literal: true

require 'rspec'

# Complete the method/function so that it converts dash/underscore delimited words
# into camel casing. The first word within the output should be capitalized only
# if the original word was capitalized (known as Upper Camel Case, also often
# referred to as Pascal case).

# Examples
# to_camel_case("the-stealth-warrior") => 'theStealthWarrior'
# to_camel_case("The_Stealth_Warrior") => 'TheStealthWarrior'

def to_camel_case(str)
  res = []
  if str.include?('-')
    res << str.split('-').map(&:capitalize)
  else
    res << str.split('_').map.with_index { |x, i| i.zero? ? x : x.capitalize }
  end
  res.join
end

p to_camel_case('to-camel-case')

describe '#to_camel_case' do
  it 'returns an empty string' do
    expect(to_camel_case('')).to eq('')
  end

  it 'returns a converted string' do
    expect(to_camel_case('to_camel_case')).to eq('toCamelCase')
  end

  it 'returns a converted string' do
    expect(to_camel_case('to-camel-case')).to eq('ToCamelCase')
  end
end
