class AddStaffFavorite < ActiveRecord::Migration
  def change
    add_column :Books, :Favorite, :integer
  end
end
