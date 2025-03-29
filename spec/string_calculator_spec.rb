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
  end
end
