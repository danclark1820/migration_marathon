class PopulateFirstLastNameReaders < ActiveRecord::Migration
  def up
    Reader.find_each do |reader|
      name_array = reader.full_name.split
      reader.first_name = name_array[0]
      reader.last_name = name_array[1]
      reader.save
    end
  end

  def down
    Reader.find_each do |reader|
      reader.first_name = nil
      reader.last_name = nil
      reader.save
    end
  end
end
