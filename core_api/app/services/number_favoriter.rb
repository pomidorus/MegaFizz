class NumberFavoriter
  def initialize(number, status)
    @number = number
    @status = status
  end

  def favorite
    if @status
      FavoriteNumber.find_or_create_by!(number: @number)
    else
      FavoriteNumber.find_by_number(@number).delete
    end

    { favorite: @status }
  end
end
