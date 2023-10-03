# frozen_string_literal: true

require 'rspec'

# Character recognition software is widely used to digitise printed texts.
# Thus the texts can be edited, searched and stored on a computer.
# When documents (especially pretty old ones written with a typewriter), are digitised
# character recognition softwares often make mistakes.

# Your task is correct the errors in the digitised text. You only have to handle
# the following mistakes:

# S is misinterpreted as 5
# O is misinterpreted as 0
# I is misinterpreted as 1
# The test cases contain numbers only by mistake.

def correct(string)
  # tr - http://ruby-doc.org/core-2.6.3/String.html#method-i-tr
  # 'hello'.tr('el', 'ip')     => 'hippo'
  # 'hello'.tr('aeiou', '*')   => 'h*ll*'
  # 'hello'.tr('aeiou', 'AA*') => 'hAll*'
  string.tr('501', 'SOI')
end

p correct('51NGAP0RE')

describe '#correct' do
  it 'replaces numbers in the string' do
    expect(correct('PARIS')).to eq('PARIS')
  end
end
