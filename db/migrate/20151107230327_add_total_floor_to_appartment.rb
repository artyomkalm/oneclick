class AddTotalFloorToAppartment < ActiveRecord::Migration
  def change
    add_column :appartments, :total_floor, :integer
    add_column :appartments, :flat_level, :integer
    add_column :appartments, :room_height, :integer
    add_column :appartments, :floor, :integer

  end
end
