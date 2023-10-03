# frozen_string_literal: true

require 'rspec'

# Write function bmi that calculates body mass index (bmi = weight / height ^ 2).
# if bmi <= 18.5 return 'Underweight'
# if bmi <= 25.0 return 'Normal'
# if bmi <= 30.0 return 'Overweight'
# if bmi > 30 return 'Obese'

def bmi(weight, height)
  bmi = weight / (height**2)
  return 'Underweight' if bmi <= 18.5
  return 'Normal' if bmi.between?(18.6, 25)

  bmi.between?(25.1, 30) ? 'Overweight' : 'Obese'
end

p bmi(92, 1.92)

describe '#bmi' do
  it 'returns Underweight' do
    expect(bmi(50, 1.80)).to eq('Underweight')
  end

  it 'returns Normal' do
    expect(bmi(80, 1.80)).to eq('Normal')
  end

  it 'returns Overweight' do
    expect(bmi(90, 1.80)).to eq('Overweight')
  end

  it 'returns Obese' do
    expect(bmi(110, 1.80)).to eq('Obese')
  end

  it 'returns Normal' do
    expect(bmi(50, 1.50)).to eq('Normal')
  end
end
