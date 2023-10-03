# frozen_string_literal: true

require 'rspec'

# Your boss decided to save money by purchasing some cut-rate optical character recognition software for scanning
# in the text of old novels to your database. At first it seems to capture words okay, but you quickly notice that
# it throws in a lot of numbers at random places in the text. For example:

# string_clean('! !') => '! !'
# string_clean('123456789') => ''
# string_clean('This looks5 grea8t!') => 'This looks great!'

# Your harried co-workers are looking to you for a solution to take this garbled text and remove all of the numbers.
# Your program will take in a string and clean out all numeric characters, and return a string with spacing and special
# characters ~#$%^&!@*():;"'.,? all intact.

# Two good solutions from Codewars
# def string_clean(string)
#   # tr - https://ruby-doc.org/core-2.5.1/String.html#method-i-tr
#   # Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str.
#   # If to_str is shorter than from_str, it is padded with its last character in order to maintain the correspondence.
#   # 'hello'.tr('el', 'ip') => 'hippo'
#   string.tr('0-9', '')
# end

# def string_clean(string)
#   # delete - http://ruby-doc.org/core-2.5.1/String.html#method-i-delete
#   # Returns a copy of str with all characters in the intersection of its arguments deleted.
#   # Uses the same rules for building the set of characters as String#count.
#   # 'hello'.delete('lo') => "he"
#   string.delete('0-9')
# end

def string_clean(string)
  # \d - only digits
  string.gsub(/\d/, '')
end

p string_clean('E3at m2e2!!') # Eat me!!

describe '#string_clean' do
  it 'removes all numbers from a string' do
    expect(string_clean('!Hell11o0 Worl7d!')).to eq('!Hello World!')
  end
end
