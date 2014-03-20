class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.datetime :checked_out
      t.datetime :checked_in

      t.timestamps
    end
  end
end
