# frozen_string_literal: true

# StringCalculator is a utility class that performs addition of numbers from a string input.
# It supports user-defined delimiters and handles edge cases like empty strings.
class StringCalculator
  def self.add(input)
    return 0 if input.empty?

    delimiter = extract_delimiter(input)
    numbers = extract_numbers(input, delimiter)
    validate_no_negatives(numbers)

    numbers.sum
  end

  class << self
    private

    def extract_numbers(input, delimiter)
      input.gsub("\n", delimiter).split(delimiter).map(&:to_i)
    end

    def extract_delimiter(input)
      return input[2] if input.start_with?('//')

      ','
    end

    def negative_numbers(numbers)
      numbers.select(&:negative?)
    end

    def validate_no_negatives(numbers)
      negatives = negative_numbers(numbers)
      raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
    end
  end
end
