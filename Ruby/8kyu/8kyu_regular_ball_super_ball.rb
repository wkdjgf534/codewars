# frozen_string_literal: true

require 'rspec'

# Regular Ball Super Ball
# Create a class Ball.
# Ball objects should accept one argument for "ball type" when instantiated.
# If no arguments are given, ball objects should instantiate with a "ball type" of "regular."

# ball1 = Ball.new
# ball2 = Ball.new 'super'
# ball1.ball_type  => 'regular'
# ball2.ball_type  => 'super'

class Ball
  attr_reader :ball_type
  def initialize(ball_type = 'regular')
    @ball_type = ball_type
  end
end

ball = Ball.new('super')

p ball.ball_type

describe '.ball_type' do
  it 'returns a object with ball_type = \'regular\'' do
    expect(Ball.new.ball_type).to eq('regular')
  end

  it 'returns a object with ball_type = \'super\'' do
    expect(Ball.new('super').ball_type).to eq('super')
  end
end
