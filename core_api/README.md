# MegaFizz API application

https://protected-wave-98335.herokuapp.com/

### API Endpoints

- `GET /numbers?page=&per_page=` - request fizzbuzz numbers for page & per_page params
- `POST /favorite {number, favorited, page, per_page}` - 

### Deployment

````
git subtree push --prefix core_api heroku_back master
heroku run --app protected-wave-98335 rake db:migrate
````
