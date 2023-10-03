# frozen_string_literal: true

require 'rspec'

# Ask a small girl - "How old are you?". She always says strange things... Lets help her!
# For correct answer program should return int from 0 to 9.
# Assume test input string always valid and may look like "1 year old" or "5 years old", etc.. The first char is

# The best solution form Codewars
# def get_age(age)
#   age.to_i
# end

def get_age(age)
  # tr - http://ruby-doc.org/core-2.5.1/String.html#method-i-tr
  # Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str.
  # If to_str is shorter than from_str, it is padded with its last character in order to maintain the correspondence.
  # "hello".tr('^aeiou', '*') => "*e**o"
  age.tr('^0-9', '').to_i
end

p get_age('4 years old')

describe '#get_age' do
  it 'extracts a number from a string' do
    expect(get_age('4 years old')).to eq(4)
  end
end
