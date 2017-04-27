module Fizzbuzz
  class API < Grape::API
    format :json

    helpers do
      def cache_key
        "#{params[:page]}/#{params[:per_page]}/numbers"
      end

      def numbers
        FizzBuzzGenerator.new(params[:page], params[:per_page]).generate
      end
    end

    desc 'Return fizz buzz numbers'
    params do
      requires :page, type: Integer, desc: 'Page number'
      requires :per_page, type: Integer, desc: 'Number of numbers on the page'
    end
    get :numbers do
      Rails.cache.fetch(cache_key, expires_in: 12.hours) do
        numbers
      end
    end

    desc 'Favorite number'
    params do
      requires :number, type: String
      requires :favorited, type: Boolean
      requires :page, type: Integer, desc: 'Page number'
      requires :per_page, type: Integer, desc: 'Number of numbers on the page'
    end
    post :favorite do
      Rails.cache.delete(cache_key)

      NumberFavoriter.new(params[:number], params[:favorited]).favorite
    end
  end
end
