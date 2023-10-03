# frozen_string_literal: true

require 'rspec'

class Person
  attr_reader :age, :first_name, :last_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

person = Person.new('Абырвалг', 'Шариков', 8)

puts person.full_name
puts person.age

describe 'Person' do
  context 'With valid input' do
    user = Person.new('Peter', 'Peterson', 111)

    it 'initializes an object correctly' do
      expect(user.first_name).to eq('Peter')
      expect(user.last_name).to eq('Peterson')
      expect(user.age).to eq(111)
    end

    it '#full_name' do
      expect(user.full_name).to eq('Peter Peterson')
    end
  end
end
