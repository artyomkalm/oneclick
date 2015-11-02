class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :street_id
      t.integer :lq_id
      t.string :number_street
      t.string :number_lq
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
