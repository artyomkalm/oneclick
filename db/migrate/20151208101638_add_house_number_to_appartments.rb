class AddHouseNumberToAppartments < ActiveRecord::Migration
  def change
    add_column :houses, :index, :string
  end
end
