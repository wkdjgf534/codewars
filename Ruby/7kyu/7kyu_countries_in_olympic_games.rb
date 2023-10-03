# frozen_string_literal: true

require 'rspec'

# Order Countries in Olympics Games

# In Olympic games countries are ranked based on the gold, and then silver, and then bronze medals.
# You get a list of countries in form of a dictionary; the key is the country name, and the value
# is a string that indicate the number of gold, silver and bronze medals.

# For example in this list:
# list = {
#   'China' => '54, 32, 44',
#   'Korea' => '55, 33, 45 ,
#   'Iraq' => '54, 33, 45',
#   'Iran' => '54, 33, 45',
#   'Norway' => '56, 32, 45',
#   'Finland' => '55, 34, 45'
# }

# China has 54 gold medals, 32 silver medals and 44 bronze medals.
# The result should be a string ordering the countries and separating
# them by - In abovementioned example the output should be:

#Norway-Finland-Korea-Iran-Iraq-China

# If two counties get similar medals, then you sort them based on alphabetical order.

list = { 'China' => '54, 32, 44',
         'Korea' => '550, 33, 45',
         'Iraq' => '54, 33, 45',
         'Iran' => '54, 33, 45',
         'Norway' => '56, 32, 45',
         'Finland' => '55, 34, 45' }

def order_countries(list_of_countries = {})
  list_of_countries.sort_by { |k, v| v.split(',').map { |i| -i.to_i } << [k] }.map(&:first).join('-')
end

p order_countries(list)

describe '#order_countires' do
  it 'returns a sorted string with countries' do
    expect(order_countries(list)).to eq('Korea-Norway-Finland-Iran-Iraq-China')
  end
end
