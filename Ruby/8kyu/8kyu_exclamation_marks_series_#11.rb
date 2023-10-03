# frozen_string_literal: true

require 'rspec'

# Description:

# Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.

# Examples

# replace("Hi!") => "H!!"
# replace("!Hi! Hi!") => "!H!! H!!"
# replace("aeiou") => "!!!!!"
# replace("ABCDE") => "!BCD!"

def replace(string)
  # tr - http://ruby-doc.org/core-2.5.1/String.html#method-i-tr
  string.tr('aeiouAEIOU', '!')
end

p replace('Abcde!')

describe '#replace' do
  it 'replaces all vowels in the string with exclamation marks' do
    expect(replace('Abcde')).to eq('!bcd!')
  end
end
