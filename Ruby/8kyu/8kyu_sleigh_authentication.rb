# frozen_string_literal: true

require 'rspec'

# Christmas is coming and many people dreamed of having a ride with Santa's sleigh.
# But, of course, only Santa himself is allowed to use this wonderful transportation.
# And in order to make sure, that only he can board the sleigh, there's an authentication mechanism.

# Your task is to implement the authenticate() method of the sleigh, which takes the name
# of the person, who wants to board the sleigh and a secret password. If, and only if, the
# name equals "Santa Claus" and the password is "Ho Ho Ho!" (yes, even Santa has a secret
# password with uppercase and lowercase letters and special characters :D), the return value
# must be true. Otherwise it should return false.

# Examples:
# var sleigh = new Sleigh();
# sleigh.authenticate('Santa Claus', 'Ho Ho Ho!'); # true
# sleigh.authenticate('Santa', 'Ho Ho Ho!');       # false
# sleigh.authenticate('Santa Claus', 'Ho Ho!');    # false
# sleigh.authenticate('jhoffner', 'CodeWars');     # false

class Sleigh
  def authenticate(name, password)
    name == 'Santa Claus' && password == 'Ho Ho Ho!'
  end
end

user = Sleigh.new.authenticate('Santa Claus', 'Ho Ho Ho!')
p user

describe '.authenticate' do
  it 'returns true' do
    expect(Sleigh.new.authenticate('Santa Claus', 'Ho Ho Ho!')).to be_truthy
  end

  it 'returns false' do
    expect(Sleigh.new.authenticate('Santa', 'Ho!')).to be_falsey
  end
end
