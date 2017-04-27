module Fizzbuzz
  class API < Grape::API
    format :json

    desc 'Return fizz buzz numbers'
    params do
      requires :page, type: Integer, desc: 'Page number'
      requires :per_page, type: Integer, desc: 'Number of numbers on the page'
    end
    get :numbers do
      FizzBuzzGenerator.new(params[:page], params[:per_page]).generate
    end

    desc 'Favorite number'
    params do
      requires :number, type: String
      requires :favorited, type: Boolean
    end
    post :favorite do
      NumberFavoriter.new(params[:number], params[:favorited]).favorite
    end
  end
end
