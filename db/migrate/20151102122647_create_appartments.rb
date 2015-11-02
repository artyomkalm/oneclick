class CreateAppartments < ActiveRecord::Migration
  def change
    create_table :appartments do |t|
      t.integer :user_id, :null => false
      t.integer :city_id, :null => false
      t.integer :street_id
      t.integer :lq_id
      t.integer :house_id
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
