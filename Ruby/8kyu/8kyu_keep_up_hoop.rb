# frozen_string_literal: true

require 'rspec'

# Alex just got a new hula hoop, he loves it but feels discouraged because his little
# brother is better than him
# Write a program where Alex can input (n) how many times the hoop goes round and it
# will return him an encouraging message :)

# -If Alex gets 10 or more hoops, return the string 'Great, now move on to tricks'.
# -If he doesn't get 10 hoops, return the string 'Keep at it until you get it'.

def hoop_count(n)
  n >= 10 ? 'Great, now move on to tricks' : 'Keep at it until you get it'
end

p hoop_count(11)

describe '#hoop_count' do
  it 'returns phrase \'Great, now move on to tricks\' if num greater than or equal 10' do
    expect(hoop_count(11)).to eq('Great, now move on to tricks')
  end

  it 'returns phrase \'Keep at it until you get it\' if num lover than 10' do
    expect(hoop_count(11)).to eq('Great, now move on to tricks')
  end
end
