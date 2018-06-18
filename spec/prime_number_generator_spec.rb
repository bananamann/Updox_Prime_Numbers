require 'rspec'
require 'rspec/expectations'
require './modules/prime_number_generator'

describe PrimeNumberGenerator do
  it 'should return [7901, 7907, 7919] when given a range of 7900..7920' do
    prime_numbers = PrimeNumberGenerator.generate(7900, 7920)
    expect(prime_numbers).to eq [7901, 7907, 7919]
  end

  it 'accepts ranges in either ascending or descending order' do
    results_asc = PrimeNumberGenerator.generate(1, 100)
    results_desc = PrimeNumberGenerator.generate(100, 1)

    expect(results_asc). to eq results_desc
  end

  it 'will raise an error when passed any non-numeric value' do
    expect{ PrimeNumberGenerator.generate('Up', 'Dox') }.to raise_error(RuntimeError, "Range values must be integers. Please restart and try again.")
    expect{ PrimeNumberGenerator.generate(nil, nil) }.to raise_error(RuntimeError, "Range values must be integers. Please restart and try again.")
    expect{ PrimeNumberGenerator.generate(-7, -45) }.to raise_error(RuntimeError, "Range values must be integers. Please restart and try again.")
  end

  it 'returns results that are inclusive of both ends of the given range' do
    starting_value = 5
    ending_value = 13
    results = PrimeNumberGenerator.generate(starting_value, ending_value)
    expect([starting_value, ending_value] - results).to eq []
  end
end