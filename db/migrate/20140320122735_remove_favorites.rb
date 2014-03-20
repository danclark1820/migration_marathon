class RemoveFavorites < ActiveRecord::Migration
  def up
    remove_column :books, :Favorite
  end
  def down
    add_column :books, :Favorite, :boolean
  end
end
