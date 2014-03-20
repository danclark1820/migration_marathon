class StaffFavoriteToBook < ActiveRecord::Migration
  def up
    add_column :books, :Favorite, :Boolean
  end
  def down
    remove_column :books, :Favorite
  end
end
