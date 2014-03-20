class AddPersonToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :person, :string
  end
end
