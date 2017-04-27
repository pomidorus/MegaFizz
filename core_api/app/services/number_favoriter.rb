class NumberFavoriter
  def initialize(number, status)
    @number = number
    @status = status
  end

  def favorite
    if @status
      FavoriteNumber.find_or_create_by!(number: @number)
    else
      FavoriteNumber.where(number: @number).delete_all
    end

    { favorite: @status }
  end
end
