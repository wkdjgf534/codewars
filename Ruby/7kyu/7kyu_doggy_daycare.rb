# frozen_string_literal: true

require 'rspec'

# The owner of the doggy daycare wants to know whether she can accept new dogs into
# her daycare and needs to check whether they have been wormed and vaccinated in order
# to accept them either by themselves or as well as other dogs.

# There is a Dog prototype (class in Ruby) that needs to be extended with the method
# checkDog (check_dog). Dog currently has the following properties (attributes):

# name
# age
# breed
# vaccinated
# wormed

# You'll need to return the dog's name each time as well as " can be accepted", "
# can only be accepted by itself" and " can not be accepted".

# If the dog is vaccinated and wormed, the dog can be accepted.
# If the dog is only vaccinated or only wormed, the dog can only be accepted by itself.
# If the dog has not be vaccinated or wormed, the dog can not be accepted.

# Example:
# spot = Dog.new("Spot", 5, "Labrador", true, false)
# spot.check_dog # Should return: "Spot can only be accepted by itself".

class Dog
  attr_reader :name, :age, :breed, :vaccinated, :wormed
  def initialize(name, age, breed, vaccinated, wormed)
    @name = name
    @age = age
    @breed = breed
    @vaccinated = vaccinated
    @wormed = wormed
  end

  def check_dog
    return "#{name} can be accepted" if vaccinated && wormed
    return "#{name} can only be accepted by itself" if vaccinated || wormed
    "#{name} can not be accepted"
  end
end

spot = Dog.new('Spot', 5, 'Labrador', true, false)
p spot.check_dog # 'Spot can only be accepted by itself'

riley = Dog.new('Riley', 3, 'GoldenDoodle', true, true)
p riley.check_dog # 'Riley can be accepted'

clive = Dog.new('Clive', 8, 'German Shepard', false, false)
p clive.check_dog # 'Clive can not be accepted'

describe '#check_dog' do
  it 'returns a status of the dog is vaccinated or wormed' do
    spot = Dog.new('Spot', 5, 'Labrador', true, false)
    expect(spot.check_dog).to eq('Spot can only be accepted by itself')
  end

  it 'returns a status of the dog is not acceptable' do
    spot = Dog.new('Spot', 5, 'Labrador', false, false)
    expect(spot.check_dog).to eq('Spot can not be accepted')
  end

  it 'returns a status of the dog is totally acceptable' do
    spot = Dog.new('Spot', 5, 'Labrador', true, true)
    expect(spot.check_dog).to eq('Spot can be accepted')
  end
end
