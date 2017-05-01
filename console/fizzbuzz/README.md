# FizzBuzz Elixir Console application

Let's show some help

````
./fizzbuzz help

`help` - show this message
`numbers --page=PAGE --per-page=PER_PAGE` - show list of fizzbuzz numbers with params PAGE(Integer) and PER_PAGE(Integer)
`favorite --number=NUMBER --favorited=FAVORITED --page=PAGE --per-page=PER_PAGE` - Favorite or unfavorite NUMBER(Iteger) with flag FAVORITED and params PAGE(Integer) and PER_PAGE(Integer)
````

Let's show fizzbuzz numbers (-**- = favorite number)

````
./fizzbuzz numbers --page=1 --per-page=10

-*1*-
2
Fizz
4
-*Buzz*-
Fizz
7
8
Fizz
Buzz
````

Let's favorite some number

````
./fizzbuzz favorite --number=1 --favorited=false --page=1 --per-page=10
Response: removed from favorite
````

Let's check numbers again

````
./fizzbuzz numbers --page=1 --per-page=10

1
2
Fizz
4
-*Buzz*-
Fizz
7
8
Fizz
Buzz
````