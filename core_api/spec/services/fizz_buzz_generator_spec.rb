require 'rails_helper'

describe FizzBuzzGenerator do
  let(:generator) { FizzBuzzGenerator.new(1, 10) }
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
      {:number=>"Buzz", :favorite=>false}
    ]
  end

  describe '#generate' do
    it 'generate correct values' do
      expect(generator.generate).to eq(data)
    end
  end
end
