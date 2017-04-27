require 'rails_helper'

describe FizzBuzzGenerator do
  let(:page) { 1 }
  let(:per_page) { 15 }
  let(:generator) { FizzBuzzGenerator.new(page, per_page) }
  let(:data) do
    [
      {:number=>1, :favorite=>false},
      {:number=>2, :favorite=>false},
      {:number=>"Fizz", :favorite=>false},
      {:number=>4, :favorite=>false},
      {:number=>"Buzz", :favorite=>false},
      {:number=>"Fizz", :favorite=>false},
      {:number=>7, :favorite=>false},
      {:number=>8, :favorite=>false},
      {:number=>"Fizz", :favorite=>false},
      {:number=>"Buzz", :favorite=>false},
      {:number=>11, :favorite=>false},
      {:number=>"Fizz", :favorite=>false},
      {:number=>13, :favorite=>false},
      {:number=>14, :favorite=>false},
      {:number=>"FizzBuzz", :favorite=>false}
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
        expect(generator.generate).to eq([{number: "Buzz", favorite: false}])
      end
    end
  end
end
