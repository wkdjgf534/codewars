# frozen_string_literal: true

require 'rspec'

# This is a beginner friendly kata especially for UFC/MMA fans.

# It's a fight between the two legends: Conor McGregor vs George Saint Pierre in Madison Square Garden.
# Only one fighter will remain standing, and after the fight in an interview with Joe Rogan the winner
# will make his legendary statement. It's your job to return the right statement depending on the winner!

# If the winner is George Saint Pierre he will obviously say:
# "I am not impressed by your performance."
# If the winner is Conor McGregor he will most undoubtedly say:
# "I'd like to take this chance to apologize. To absolutely NOBODY!"
# Good Luck!

def quote(fighter)
  string1 = 'I am not impressed by your performance.'
  string2 = 'I would like to take this chance to apologize.. To absolutely NOBODY!'

  fighter.downcase == 'conor mcgregor' ? string2 : string1
end

p quote('george saint pierre')

describe '#quote' do
  it "returns George Saint Pierre's quote" do
    expect(quote('george saint pierre')).to eq('I am not impressed by your performance.')
  end

  it "returns Connor McGregor's quote" do
    expect(quote('conor mcgregor')).to eq('I would like to take this chance to apologize.. To absolutely NOBODY!')
  end
end
