class FizzBuzzGenerator
  def initialize(page, per_page)
    @page = page
    @per_page = per_page
  end

  def generate
    (from..to).map do |number|
      { number: fizzbuzz?(number), favorite: FavoriteNumberChecker.new(number).check }
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
    ((@page - 1) * @per_page) + 1
  end

  def to
    (from + @per_page) - 1
  end
end
