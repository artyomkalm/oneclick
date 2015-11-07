class CreateConstructionPhases < ActiveRecord::Migration
  def change
    create_table :construction_phases do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
