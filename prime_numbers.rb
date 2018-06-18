# Per the Code Challenge requirements

def generate(startingValue, endingValue)
  prime_numbers = []
  range = startingValue > endingValue ? endingValue..startingValue : startingValue..endingValue

  range.each do |value|
    prime_numbers << value if is_prime? value
  end

  prime_numbers
end

def is_prime?(value)
  return false if value <= 1
  Math.sqrt(value).to_i.downto(2).each { |i| return false if value % i == 0 }
  true
end

puts "\nThis program will determine all prime numbers in a given range. The range is inclusive and can be entered in ascending or descending order.\n\n"
puts "Please enter the first number in the range: "
range_start = gets.to_i

puts "Please enter the second number in the range: "
range_end = gets.to_i

puts generate(range_start, range_end)