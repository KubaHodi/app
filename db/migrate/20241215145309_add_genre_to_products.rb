class AddGenreToProducts < ActiveRecord::Migration[8.0]
  def change
    add_reference :products, :genre, null: false, foreign_key: true
  end
end
