require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    context 'when argument is 0' do
      it 'returns 1' do
        expect(subject.factorial(0)).to eq(1)
      end
    end

    context 'when argument is positive integers' do
      it 'returns the correct factorial' do
        expect(subject.factorial(5)).to eq(120)
        expect(subject.factorial(6)).to eq(720)
        expect(subject.factorial(10)).to eq(3_628_800)
      end
    end

    context 'when argument is a negative integer' do
      it 'raises an exception' do
        expect do
          subject.factorial(-5)
        end.to raise_error(ArgumentError, 'Factorial is only defined for non-negative integers.')
      end
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(subject.reverse('hello')).to eq('olleh')
      expect(subject.reverse('ruby')).to eq('ybur')
      expect(subject.reverse('openai')).to eq('ianepo')
    end
  end

  describe '#fizzbuzz' do
    context 'when the number is divisible by 3' do
      it 'returns "fizz"' do
        expect(subject.fizzbuzz(3)).to eq('fizz')
        expect(subject.fizzbuzz(9)).to eq('fizz')
        expect(subject.fizzbuzz(12)).to eq('fizz')
      end
    end

    context 'when the number is divisible by 5' do
      it 'returns "buzz"' do
        expect(subject.fizzbuzz(5)).to eq('buzz')
        expect(subject.fizzbuzz(10)).to eq('buzz')
        expect(subject.fizzbuzz(20)).to eq('buzz')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when the number is divisible by both 3 and 5' do
      it 'returns "fizzbuzz"' do
        expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
        expect(subject.fizzbuzz(30)).to eq('fizzbuzz')
        expect(subject.fizzbuzz(45)).to eq('fizzbuzz')
      end
    end

    context 'when the number is neither divisible by 3 nor 5' do
      it 'returns the number' do
        expect(subject.fizzbuzz(7)).to eq('7')
        expect(subject.fizzbuzz(13)).to eq('13')
        expect(subject.fizzbuzz(17)).to eq('17')
      end
    end
  end
end
