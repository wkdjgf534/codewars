# frozen_string_literal: true

require 'rspec'

# Complete the function so that it returns the number of seconds that have elapsed between the start and end times given.
# Tips:
# The start/end times are given as Date (JS/CoffeeScript), DateTime (C#), Time (Nim), datetime(Python) and Time (Ruby) instances.
# The start time will always be before the end time.

def elapsed_seconds(start_time, end_time)
  end_time - start_time
end

p elapsed_seconds(Time.now, Time.now + 1)

describe '#elapsed_seconds' do
  it 'returns a value of elapsed seconds' do
    expect(elapsed_seconds(Time.now, Time.now + 1)).to be_within(0.0001).of(1)
  end
end
