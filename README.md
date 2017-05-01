# MegaFizz

Coding challenge for fizz_buzz application

Backend (Rails API): [backend](core_api/README.md)

Frontend (React): [frontend](front_app/README.md)

Console (Elixir): [console](console/fizzbuzz/README.md)

## Notes

- FizzBuzz numbers calculates on the fly. Only favorite number are saved in the database
- Numbers API request cached on the backend application. So that is why I need provide page & per_page for favorite
post request - to update cache
- ~100% coverage for backend application & simple tests for react & console application
- No any previous experience on building console Elixir application including testing