module Fizzbuzz
  class API < Grape::API
    format :json

    desc 'Return fizz buzz numbers'
    get :numbers do
      [{number: 1, favorite: false}]
    end
  end
end
