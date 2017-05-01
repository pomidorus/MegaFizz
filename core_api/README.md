# MegaFizz API application

https://protected-wave-98335.herokuapp.com/

### Info

Rails API application for handling requests for displaying fizzbuzz numbers & favorite number
- Numbers request cached by page & per_page key
- FizzBuzz numbers generated on the fly
- Favorite number are stored in the database
- Main logic is covered by service objects: NumberFavoriter & FizzBuzzGenerator 
- Test coverage is ~100% (maybe we need to delete Rails cache on every spec run)

### API Endpoints

- `GET /numbers?page=&per_page=` - request fizzbuzz numbers for page & per_page params
- `POST /favorite {number, favorited, page, per_page}` - 

### Deployment

````
git subtree push --prefix core_api heroku_back master
heroku run --app protected-wave-98335 rake db:migrate
````
