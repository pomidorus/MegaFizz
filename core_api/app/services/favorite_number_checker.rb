class FavoriteNumberChecker
  def initialize(number)
    @number = number.to_s
  end

  def check
    FavoriteNumber.where(number: @number).present?
  end
end
