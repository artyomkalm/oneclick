class AddNumberToAppartments < ActiveRecord::Migration
  def change
    add_column :appartments, :number, :string
  end
end
