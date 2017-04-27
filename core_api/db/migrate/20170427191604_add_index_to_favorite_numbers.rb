class AddIndexToFavoriteNumbers < ActiveRecord::Migration[5.0]
  def change
    add_index :favorite_numbers, :number
  end
end
