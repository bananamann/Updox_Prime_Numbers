require './modules/prime_number_generator'

puts "\nThis program will determine all prime numbers in a given range. The range is inclusive and can be entered in ascending or descending order.\n\n"

def start_program
  puts "Please enter the first number in the range: "
  range_start = gets

  puts "Please enter the second number in the range: "
  range_end = gets

  puts PrimeNumberGenerator.generate(range_start, range_end)
end

start_program