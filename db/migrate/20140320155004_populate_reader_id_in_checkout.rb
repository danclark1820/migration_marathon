require 'pry'
class PopulateReaderIdInCheckout < ActiveRecord::Migration
  def up
    Checkout.find_each do |checkout|
      reader = Reader.find_by(email: checkout.person)
      if reader.nil?
        reader = Reader.create(email: checkout.person)
      end
      checkout.reader_id = reader.id
    end
  end

  def down
    Checkout.find_each do |checkout|
      checkout.reader_id = nil
    end
  end
end
