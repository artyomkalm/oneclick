class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, :limit => 20, :null => false
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
    add_index :cities, :name, :unique => true
  end
end
