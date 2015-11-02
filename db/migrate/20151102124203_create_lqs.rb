class CreateLqs < ActiveRecord::Migration
  def change
    create_table :lqs do |t|
      t.integer :city_id, :null => false
      t.string :number_code, :limit => 20, :null => false
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
