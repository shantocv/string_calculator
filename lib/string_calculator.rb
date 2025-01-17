# frozen_string_literal: true

# StringCalculator is a utility class that performs addition of numbers from a string input.
# It supports user-defined delimiters and handles edge cases like empty strings.
class StringCalculator
  def self.add(input)
    return 0 if input.empty?

    numbers = split_by(input).map(&:to_i)
    numbers.sum
  end

  # Replace newlines with commas and split by delimiter
  def self.split_by(input)
    input.gsub("\n", delimiter).split(delimiter)
  end

  def self.delimiter
    ','
  end
end
