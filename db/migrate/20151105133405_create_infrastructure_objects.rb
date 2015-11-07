class CreateInfrastructureObjects < ActiveRecord::Migration
  def change
    create_table :infrastructure_objects do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
