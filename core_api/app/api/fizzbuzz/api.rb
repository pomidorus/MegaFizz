module Fizzbuzz
  class API < Grape::API
    format :json

    desc 'Return fizz buzz numbers'
    params do
      requires :page, type: Integer
      requires :per_page, type: Integer
    end
    get :numbers do
      FizzBuzzGenerator.new(params[:page], params[:per_page]).generate
    end
  end
end
