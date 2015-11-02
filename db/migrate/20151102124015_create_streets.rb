class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.integer :city_id, :null => false
      t.string :name, :limit => 60, :null => false
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
