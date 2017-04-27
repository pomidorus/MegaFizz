class NumberFavoriter
  def initialize(number, status)
    @number = number
    @status = status
  end

  def favorite
    # FavoriteNumber.create(number: '11111111111')
    # if status true -> create record
    # if false -> delete record
    { favorite: true }
  end
end
