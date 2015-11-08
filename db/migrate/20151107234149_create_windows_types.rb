class CreateWindowsTypes < ActiveRecord::Migration
  def change
    create_table :windows_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end

    add_column :appartments, :windows_type_id, :integer
    add_column :appartments, :building_state_id, :integer

  end
end
