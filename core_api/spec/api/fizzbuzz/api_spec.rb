require 'rails_helper'

describe Fizzbuzz::API, type: :request do
  describe 'GET /numbers' do
    it 'returns valid data' do
      get '/numbers', params: { page: 1, per_page: 100 }
      hash_response = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(hash_response.count).to eq(100)
      expect(hash_response.first['number']).to eq(1)
      expect(hash_response.last['number']).to eq('Buzz')
    end
  end
end
