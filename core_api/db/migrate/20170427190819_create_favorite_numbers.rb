class CreateFavoriteNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_numbers do |t|
      t.string :number

      t.timestamps
    end
  end
end
