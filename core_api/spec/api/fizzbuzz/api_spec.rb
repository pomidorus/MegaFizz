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

  describe 'POST /favorite' do
    let(:favorite) { FavoriteNumber.create(number: '111') }

    it 'make number favorite' do
      post '/favorite', params: { number: '10000', favorited: true }
      hash_response = JSON.parse(response.body)

      expect(response.status).to eq(201)
      expect(hash_response['favorite']).to eq(true)
      expect(FavoriteNumber.count).to eq(1)
      expect(FavoriteNumber.first.number).to eq('10000')
    end

    it 'make number favorite' do
      post '/favorite', params: { number: '111', favorited: false }
      hash_response = JSON.parse(response.body)

      expect(response.status).to eq(201)
      expect(hash_response['favorite']).to eq(false)
      expect(FavoriteNumber.count).to eq(0)
    end
  end
end
