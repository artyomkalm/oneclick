class CreateBuildingClasses < ActiveRecord::Migration
  def change
    create_table :building_classes do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
