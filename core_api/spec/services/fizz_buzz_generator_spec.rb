require 'rails_helper'

describe FizzBuzzGenerator do
  let(:page) { 1 }
  let(:per_page) { 15 }
  let(:generator) { FizzBuzzGenerator.new(page, per_page) }
  let(:data) do
    [
      { number:1, real_number:1, favorite:false },
      { number:2, real_number:2, favorite:false },
      { number:"Fizz", real_number:3, favorite:false },
      { number:4, real_number:4, favorite:false },
      { number:"Buzz", real_number:5, favorite:false },
      { number:"Fizz", real_number:6, favorite:false },
      { number:7, real_number:7, favorite:false },
      { number:8, real_number:8, favorite:false },
      { number:"Fizz", real_number:9, favorite:false },
      { number:"Buzz", real_number:10, favorite:false },
      { number:11, real_number:11, favorite:false },
      { number:"Fizz", real_number:12, favorite:false },
      { number:13, real_number:13, favorite:false },
      { number:14, real_number:14, favorite:false },
      { number:"FizzBuzz", real_number:15, favorite:false }
    ]
  end

  describe '#generate' do
    context 'when normal values' do
      it 'generate correct values' do
        expect(generator.generate).to eq(data)
      end
    end

    context 'when extreme values' do
      let(:page) { 333_333_334 }
      let(:per_page) { 300 }

      it 'generate correct values' do
        expect(generator.generate.count).to eq(100)
      end
    end

    context 'when higher than upper limit values' do
      let(:page) { 333_333_434 }
      let(:per_page) { 300 }

      it 'generate correct values' do
        expect(generator.generate.count).to eq(1)
        expect(generator.generate).to eq([{number: "Buzz", real_number:100_000_000_000, favorite: false}])
      end
    end
  end
end
