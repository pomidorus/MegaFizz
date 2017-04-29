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
    let(:params) { { number: 10000, favorited: true, page: 1, per_page: 100 } }
    let(:other_params) { { number: 111, favorited: false, page: 1, per_page: 100 } }

    it 'make number favorite' do
      post '/favorite', params: params
      hash_response = JSON.parse(response.body)

      expect(response.status).to eq(201)
      expect(hash_response['status']).to eq('added to favorite')
      expect(FavoriteNumber.count).to eq(1)
      expect(FavoriteNumber.first.number).to eq('10000')
    end

    it 'make number favorite' do
      post '/favorite', params: other_params
      hash_response = JSON.parse(response.body)

      expect(response.status).to eq(201)
      expect(hash_response['status']).to eq('removed from favorite')
      expect(FavoriteNumber.count).to eq(0)
    end
  end
end
