class CreateBuildingTypes < ActiveRecord::Migration
  def change
    create_table :building_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
