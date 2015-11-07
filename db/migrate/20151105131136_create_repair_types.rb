class CreateRepairTypes < ActiveRecord::Migration
  def change
    create_table :repair_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
