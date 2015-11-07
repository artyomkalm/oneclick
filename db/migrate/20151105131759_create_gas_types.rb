class CreateGasTypes < ActiveRecord::Migration
  def change
    create_table :gas_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
