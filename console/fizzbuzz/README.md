# FizzBuzz Elixir Console application

`./fizzbuzz numbers --page=1 --per-page=10`

````
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

`./fizzbuzz favorite --number=1 --favorited=false --page=1 --per-page=10`

`Response: removed from favorite`

`./fizzbuzz numbers --page=1 --per-page=10`

````
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

`./fizzbuzz help`

````
`help` - show this message
`numbers --page=PAGE --per-page=PER_PAGE` - show list of fizzbuzz numbers with params PAGE(Integer) and PER_PAGE(Integer)
`favorite --number=NUMBER --favorited=FAVORITED --page=PAGE --per-page=PER_PAGE` - Favorite or unfavorite NUMBER(Iteger) with flag FAVORITED and params PAGE(Integer) and PER_PAGE(Integer)
````