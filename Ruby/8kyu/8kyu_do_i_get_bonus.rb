# frozen_string_literal: true

require 'rspec'

# It's bonus time in the big city! The fatcats are rubbing their paws in anticipation... but who is going to
# make the most money?

# Build a function that takes in two arguments (salary, bonus). Salary will be an integer, and bonus a boolean.

# If bonus is true, the salary should be multiplied by 10. If bonus is false, the fatcat did not make enough money
# and must receive only his stated salary.

# A good solution from Codewars
# def bonus_time(salary, bonus)
#   "$#{salary * (bonus ? 10 : 1)}"
# end

def bonus_time(salary, bonus)
  total_salary = bonus ? salary * 10 : salary
  "$#{total_salary}"
end

p bonus_time(100, false)

describe '#bonus_time' do
  it 'returns salary with bonus' do
    expect(bonus_time(100, true)).to eq('$1000')
  end

  it 'returns salary without bonus' do
    expect(bonus_time(100, false)).to eq('$100')
  end
end
