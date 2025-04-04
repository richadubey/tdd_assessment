require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when given an empty string' do
      it 'returns 0' do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context 'when given a single number' do
      it 'returns the number itself' do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context 'when given multiple numbers separated by commas' do
      it 'returns their sum' do
        expect(StringCalculator.add("1,2,3,4")).to eq(10)
      end
    end

    context 'when given numbers separated by a newline character' do
      it 'returns their sum' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context 'when given numbers with a custom delimiter' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when given multiple-character custom delimiter' do
      it 'returns the sum of numbers' do
        expect(StringCalculator.add("//[***]\n1***2***3")).to eq(6)
      end
    end

    context 'when given negative numbers' do
      it 'raises an exception' do
        expect { StringCalculator.add("1,-2,3") }.to raise_error(RuntimeError, "Negatives not allowed: -2")
      end
    end

    context 'when given an invalid delimiter format' do
      it 'raises an exception' do
        expect { StringCalculator.add("///;\n1;2;3") }.to raise_error(ArgumentError, "Invalid delimiter format")
      end
    end
  end
end
