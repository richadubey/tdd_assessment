require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when given an empty string' do
      it 'returns 0' do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context 'when given negative numbers' do
      it 'raises an exception' do
        expect { StringCalculator.add("1,-2,3") }.to raise_error(RuntimeError, "Negatives not allowed: -2")
      end
    end
  end
end
