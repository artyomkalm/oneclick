class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
