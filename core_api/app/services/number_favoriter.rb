class NumberFavoriter
  def initialize(number, status)
    @number = number.to_s
    @status = status
  end

  def favorite
    if @status
      FavoriteNumber.find_or_create_by!(number: @number)
      { status: 'added to favorite'}
    else
      FavoriteNumber.where(number: @number).delete_all
      { status: 'removed from favorite'}
    end
  end
end
