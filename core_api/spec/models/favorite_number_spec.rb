require 'rails_helper'

RSpec.describe FavoriteNumber, type: :model do
  it 'validates with number' do
    expect(FavoriteNumber.new(number: '1111111')).to be_valid
  end
end
