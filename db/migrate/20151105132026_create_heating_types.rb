class CreateHeatingTypes < ActiveRecord::Migration
  def change
    create_table :heating_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
