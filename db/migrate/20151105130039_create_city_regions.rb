class CreateCityRegions < ActiveRecord::Migration
  def change
    create_table :city_regions do |t|
      t.string :name
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
