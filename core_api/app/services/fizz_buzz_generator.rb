class FizzBuzzGenerator
  UPPER_LIMIT = 100_000_000_000

  def initialize(page, per_page)
    @page = page
    @per_page = per_page
  end

  def generate
    (from..to).map do |number|
      { number: fizzbuzz?(number), real_number: number, favorite: FavoriteNumberChecker.new(number).check }
    end
  end

  private

  def fizzbuzz?(number)
    case
      when number % 15 == 0 then 'FizzBuzz'
      when number % 3  == 0 then 'Fizz'
      when number % 5  == 0 then 'Buzz'
      else number
    end
  end

  def from
    check(((@page - 1) * @per_page) + 1)
  end

  def to
    check((from + @per_page) - 1)
  end

  def check(number)
    number > UPPER_LIMIT ? UPPER_LIMIT : number
  end
end
