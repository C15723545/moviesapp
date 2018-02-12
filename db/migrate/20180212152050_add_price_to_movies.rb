class AddPriceToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :price, :decimal, :default => 0
  end
end
