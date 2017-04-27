class NumberFavoriter
  def initialize(number, status)
    @number = number
    @status = status
  end

  def favorite
    { favorite: true }
  end
end
