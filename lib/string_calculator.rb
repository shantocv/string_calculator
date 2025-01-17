# frozen_string_literal: true

# StringCalculator is a utility class that performs addition of numbers from a string input.
# It supports user-defined delimiters and handles edge cases like empty strings.
class StringCalculator
  def self.add(input)
    return 0 if input.empty?

    delimiter = extract_delimiter(input)
    extract_numbers(input, delimiter).sum
  end

  class << self
    private

    # Replace newlines with commas and split by delimiter
    def extract_numbers(input, delimiter)
      input.gsub("\n", delimiter).split(delimiter).map(&:to_i)
    end

    def extract_delimiter(input)
      return input[2] if input.start_with?('//')

      ','
    end
  end
end
