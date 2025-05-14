require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'return the single number if only 1 number is passed' do 
      expect(StringCalculator.add("5")).to eq(5)
    end

    it 'return addition of numbers if 2 numbers are passed' do
      expect(StringCalculator.add("2,4")).to eq(6) 
    end

    it 'return addition of numbers if seperated by commas' do 
      expect(StringCalculator.add("3,7,0")).to eq(10)
    end

    it 'return addition when numbers seperated by newline' do 
      expect(StringCalculator.add("3\n7,0")).to eq(10)
    end
  end
end

