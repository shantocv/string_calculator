# frozen_string_literal: true

# StringCalculator is a utility class that performs addition of numbers from a string input.
# It supports user-defined delimiters and handles edge cases like empty strings.
class StringCalculator
  def self.add(input)
    0 if input.empty?

    numbers = input.split(',').map(&:to_i)
    numbers.sum
  end
end
