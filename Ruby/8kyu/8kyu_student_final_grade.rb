# frozen_string_literal: true

require 'rspec'

# Create a function finalGrade, which calculates the final grade of a student depending
# on two parameters: a grade for the exam and a number of completed projects.

# This function should take two arguments: exam - grade for exam (from 0 to 100);
# projects - number of completed projects (from 0 and above);

# This function should return a number (final grade). There are four types of final grades:

# 100, if a grade for the exam is more than 90 or if a number of completed projects more than 10.
# 90, if a grade for the exam is more than 75 and if a number of completed projects is minimum 5.
# 75, if a grade for the exam is more than 50 and if a number of completed projects is minimum 2.
# 0, in other cases

# Examples:
# final_grade(100, 12)  # 100
# final_grade(99, 0)    # 100
# final_grade(10, 15)   # 100
# final_grade(85, 5)    # 90
# final_grade(55, 3)    # 75
# final_grade(55, 0)    # 0
# final_grade(20, 2)    # 0

def final_grade(exam, projects)
  return 100 if exam > 90 || projects > 10
  return 90 if exam > 75 && projects >= 5
  return 75 if exam > 50 && projects >= 2

  0
end

p final_grade(100, 10)

describe '#final_grade' do
  it 'returns a grade 100' do
    expect(final_grade(100, 15)).to eq(100)
  end

  it 'returns a grade 90' do
    expect(final_grade(88, 5)).to eq(90)
  end

  it 'returns a grade 75' do
    expect(final_grade(56, 4)).to eq(75)
  end

  it 'returns a grade 0' do
    expect(final_grade(3, 1)).to eq(0)
  end
end
