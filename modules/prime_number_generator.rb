module PrimeNumberGenerator
  def self.generate(starting_value, ending_value)
    if (starting_value.to_s.strip =~ /^\d+$/) == nil || (ending_value.to_s.strip =~ /^\d+$/) == nil
      raise "Range values must be integers. Please restart and try again."
    else
      prime_numbers = []
      range = starting_value > ending_value ? ending_value..starting_value : starting_value..ending_value

      range.each do |value|
        prime_numbers << value if is_prime? value.to_i
      end

      prime_numbers
    end
  end

  def self.is_prime?(value)
    return false if value <= 1
    Math.sqrt(value).to_i.downto(2).each { |i| return false if value % i == 0 }
    true
  end
end
