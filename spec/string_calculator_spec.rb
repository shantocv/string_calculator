# frozen_string_literal: true

require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(described_class.add('')).to eq(0)
    end

    it 'returns the number itself if the input contains a single number' do
      expect(described_class.add('5')).to eq(5)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(described_class.add('1,2')).to eq(3)
    end

    it 'returns the sum of multiple comma-separated numbers' do
      expect(described_class.add('1,2,3,4')).to eq(10)
    end

    it 'returns the sum of numbers with newlines between them' do
      expect(described_class.add("1\n2,3")).to eq(6)
    end

    it 'returns the sum when the delimiter is a semicolon' do
      expect(described_class.add("//;\n1;2")).to eq(3)
    end

    it 'returns the sum when the delimiter is a custom character' do
      expect(described_class.add("//|\n1|2|3")).to eq(6)
    end
  end
end
