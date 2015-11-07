class CreateGarbageTypes < ActiveRecord::Migration
  def change
    create_table :garbage_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
