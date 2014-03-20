class AddBookIdToCheckout < ActiveRecord::Migration
  def change
    add_column :checkouts, :book_id, :integer
  end
end
